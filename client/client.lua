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

for k,v in pairs(wx.Locations) do
    exports.ox_target:addSphereZone({
        coords = vec3(v.Position.x,v.Position.y,v.Position.z),
        radius = 1.0,
        options = {
            {
                name = 'wx_robbery:safe',
                onSelect = function ()
                    local cops = lib.callback.await('wx_robbery:getCops')
                    if cops < wx.MinPolice then
                        Notify("There's not enough police online!","error")
                        return
                    end
                    if v.Robbed then
                        Notify("This safe has already been robbed recently!","error")
                        return
                    end
                    local count = lib.callback.await('ox_inventory:getItemCount', false, v.NeededItem[1])
                    if count >= v.NeededItem[2] then
                        local secret = lib.callback.await('wx_robbery:secret')
                        local coords = GetEntityCoords(PlayerPedId())
                        if lib.progressCircle({
                            duration = v.ProgressLength,
                            position = 'bottom',
                            label = "Lockpicking the safe",
                            useWhileDead = false,
                            canCancel = true,
                            disable = {
                                car = true,
                                move = true,
                                combat = true
                            },
                            anim = {
                                dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
                                clip = 'machinic_loop_mechandplayer'
                            },

                        })
                        then
                            TriggerServerEvent('wx_robbery:lockpickedSafe',v.NeededItem)
                            Citizen.Wait(1500)
                            if lib.progressCircle({
                                duration = 8000,
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
                                    local rewardcount = math.random(v.RewardRange[1],v.RewardRange[2])
                                    TriggerServerEvent('wx_robbery:getReward',v.Reward,rewardcount,secret)
                                    v.Robbed = true
                                    Notify(("You have robbed this safe and earned %sx %s"):format(rewardcount,GetItemLabel(v.Reward)),"success")
                                    SetTimeout(wx.Cooldown*60*1000,function ()
                                        v.Robbed = false
                                    end)
                                else
                                    Notify("You moved too far from the safe!","error")
                                end
                            else
                                Notify("You stopped grabbing the cash","error")
                            end
                        else
                            Notify("You've stopped lockpicking!","error")
                        end
                    else
                        Notify(("You're missing %sx %s"):format(v.NeededItem[2],GetItemLabel(v.NeededItem[1])),"error")
                        return
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
                icon = 'fa-solid fa-unlock-keyhole',
                label = "Lockpick safe",
            },
        }
    })
end
