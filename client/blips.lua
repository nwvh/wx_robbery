for k,v in pairs(wx.SafeLocations) do
    if v.Blip then
        local blip = AddBlipForCoord(v.Position.x,v.Position.y,v.Position.z)
        SetBlipSprite(blip, 255)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 1)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentSubstringPlayerName("Safe Robbery")
        EndTextCommandSetBlipName(blip)
    end
end