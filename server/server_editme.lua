WEBHOOK_URL = "" -- your webhook url for logging

BanPlayer = function (id,reason) -- Your player ban event (for banning cheaters)
    -- exports["wx_anticheat"]:ban(id,reason) -- https://0wx.tebex.io/
    -- DropPlayer(id,reason)
    print('cheater')
end

Log = function (title,desc)
    -- https://github.com/nwvh/wx_logs/

    -- exports['wx_logs']:SendLog("robbery",{
    --     username = "WX Robbery",
    --     color = 16737095,
    --     title = title,
    --     description = desc
    -- })

    local embed = {
        {
            ["title"] = title,
            ["description"] = desc,
            ["footer"] = {
                ["text"] = "🌠 WX Robbery - [ "..os.date('%d.%m.%Y - %H:%M:%S').." ]",
            },
        }
    }
    PerformHttpRequest(WEBHOOK_URL, function(err, text, headers) end, "POST",json.encode({username = "WX Robbery",embeds = embed}),{["Content-Type"] = "application/json"})
end