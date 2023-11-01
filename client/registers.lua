local playerJob = nil
ESX = exports["es_extended"]:getSharedObject()
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(100)
    end
    playerJob = ESX.GetPlayerData().job.name
    end
end)

function GetItemLabel(item)
        local itemLabels = {}
        for _, data in pairs(exports.ox_inventory:Items()) do
            itemLabels[data.name] = data.label
        end
        return itemLabels[item]
end

for k,v in pairs(wx.RegisterLocations) do
    exports.ox_target:addSphereZone({
        coords = vec3(v.Position.x,v.Position.y,v.Position.z),
        radius = 1.0,
        options = {
            {
                name = 'wx_robbery:safe',
                onSelect = function ()
                    local cops = lib.callback.await('wx_robbery:getCops')
                    if v.NeedArmed then
                        if not IsPedArmed(PlayerPedId(), 4) then
                            Notify("You're not armed, you can't rob the register!","error")
                            return
                        end
                    end
                    if cops < wx.MinPolice then
                        Notify("There's not enough police online!","error")
                        return
                    end
                    -- local state = lib.callback.await('wx_robbery:getStoreState',k)
                    if v.Robbed then
                        Notify("This register has already been robbed recently!","error")
                        return
                    end
                        local secret = lib.callback.await('wx_robbery:secret')
                        local coords = GetEntityCoords(PlayerPedId())
                        if lib.progressCircle({
                            duration = 1500,
                            position = 'bottom',
                            label = "Breaking into the register",
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                                move = true,
                                combat = true
                            },
                            anim = {
                                dict = 'missheist_jewel',
                                clip = 'smash_case_f'
                            },

                        })
                        then
                            TriggerServerEvent('wx_robbery:usedItem',v.NeededItem)
                            Citizen.Wait(1500)
                            if lib.progressCircle({
                                duration = math.random(10000,15000),
                                position = 'bottom',
                                label = "Grabbing cash",
                                useWhileDead = false,
                                canCancel = true,
                                disable = {
                                    car = true,
                                    move = true,
                                    combat = true
                                },
                                anim = {
                                    dict = 'oddjobs@shop_robbery@rob_till',
                                    clip = 'loop'
                                },
    
                            })
                            then
                                NotifyPolice("Store Robbery","There's an ongoing store robbery, alarm has been triggered.")
                                if GetDistanceBetweenCoords(coords,GetEntityCoords(PlayerPedId())) < 10.0 then
                                    local rewardcount = v.Reward[2]
                                    TriggerServerEvent('wx_robbery:getReward',v.Reward[1],rewardcount,secret)
                                    v.Robbed = true
                                    -- TriggerServerEvent('wx_robbery:setState',k,true)
                                    Notify(("You have robbed this register and earned %sx %s"):format(rewardcount,GetItemLabel(v.Reward[1])),"success")
                                    SetTimeout(wx.Cooldown*60*1000,function ()
                                        -- TriggerServerEvent('wx_robbery:setState',k,false)
                                        v.Robbed = false
                                    end)
                                else
                                    Notify("You moved too far from the register!","error")
                                end
                            else
                                Notify("You stopped grabbing the cash","error")
                            end
                        else
                            Notify("You've stopped robbing!","error")
                        end
                end,
                canInteract = function ()
                    if IsPedInAnyVehicle(PlayerPedId(),true) then return false end
                    if not wx.PoliceCanRob then
                        for _,job in pairs(wx.PoliceJobs) do
                            if playerJob == job then return false end
                        end
                    end
                    return true
                end,
                distance = 1.0,
                icon = 'fa-solid fa-cash-register',
                label = "Rob Register",
            },
        }
    })
end
