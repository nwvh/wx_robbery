local positions = {}
local duplicates = {}

for _, location in ipairs(wx.RegisterLocations) do
    local position = location.Position

    if positions[position] then
        table.insert(duplicates, position)
    else
        positions[position] = true
    end
end

for _, location in ipairs(wx.SafeLocations) do
    local position = location.Position

    if positions[position] then
        table.insert(duplicates, position)
    else
        positions[position] = true
    end
end

if #duplicates > 0 then
    print("[WARNING] You have some duplicates for the safe locations in your config:")
    for i, position in pairs(duplicates) do
        print(i, position)
    end
end