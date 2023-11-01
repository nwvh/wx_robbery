ESX = exports["es_extended"]:getSharedObject()
local states = {}

lib.callback.register('wx_robbery:secret', function()
    return SECRET
end)

lib.callback.register('wx_robbery:getCops', function()
    local cops = 0
    local xPlayers = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        for _,job in pairs(wx.PoliceJobs) do
            if xPlayer.job.name == job then
                cops = cops + 1
            end
        end
    end
    return cops
end)

RegisterNetEvent('wx_robbery:getReward',function (item,amount,secret)
    if secret == SECRET then
        exports.ox_inventory:AddItem(source, item, amount)
        Log("Safe has been robbed",("Player: [%s] %s\nAmount: %s$\nIdentifier: %s"):format(source,GetPlayerName(source),amount,GetPlayerIdentifierByType(source, 'license')))
    else
        BanPlayer(source,"[wx_robbery] - Attempting to exploit")
    end
end)

RegisterNetEvent('wx_robbery:usedItem',function (item)
    exports.ox_inventory:RemoveItem(source, item, 1)
end)

-- RegisterNetEvent('wx_robbery:setState',function (store,state)
--     table.insert(states,{store = state})
-- end)

-- lib.callback.register('wx_robbery:getStoreState', function(store)
--     return states[store]
-- end)

function GenSecret(length)
    local charset = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
    local result = {}
    local charsetLength = string.len(charset)

    for i = 1, length do
        local randomIndex = math.random(1, charsetLength)
        result[i] = string.sub(charset, randomIndex, randomIndex)
    end

    return table.concat(result)
end

RegisterCommand("generateSecret",function (source,_,_)
    if source == 0 then
        local gen = GenSecret(math.random(15,30))
        print(("[WX_ROBBERY] Here's your recommended secret key:^2 %s^7"):format(gen))
        print("[WX_ROBBERY] You can copy it and replace it in^2 configs/config_secret.lua^7")
    end
end,false)

print("[WX_ROBBERY] ^1If you haven't changed your secret key, it's really recommended to do so!^7")
print("[WX_ROBBERY] ^1With this script being open source, cheaters can look at the server side config and get the default secret key to trigger events!^7")
print("[WX_ROBBERY] ^1You can use the command ^2generateSecret^7 to get a recommended random secret key! - This command can be only ran from the console^7")