NotifyPolice = function (title,message)
    if wx.DispatchType == 'cd_dispatch' then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = wx.PoliceJobs, 
            coords = GetEntityCoords(PlayerPedId()),
            title = title,
            message = "There's an ongoing store robbery at "..data.street, 
            flash = 0,
            unique_id = math.random(1,9999999),
            sound = 1,
            blip = {
                sprite = 431, 
                scale = 1.2, 
                colour = 3,
                flashes = false, 
                text = '10-15 - Store Robbery',
                time = 5,
                radius = 0,
            }
        })
    elseif wx.DispatchType == 'linden' then
        local data = {displayCode = '10-15', description = title, isImportant = 0, recipientList = wx.PoliceJobs, length = '10000', infoM = 'fa-info-circle', info = message}
        local dispatchData = {dispatchData = data, caller = 'Alarm', coords = GetEntityCoords(PlayerPedId())}
        TriggerServerEvent('wf-alerts:svNotify', dispatchData)
    else
        -- your custom dispatch event (client side)
    end
end

Notify = function (message,type)
    lib.notify({
        title = "Robbery",
        description = message,
        icon = "sack-dollar",
        type  = type
    })
end