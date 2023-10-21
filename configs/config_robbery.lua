wx = {}

wx.PoliceJobs = { -- Jobs that count as cops (needed for counting online cops)
    'police',
    'sheriff',
    'trooper',
}

wx.MinPolice = 3 -- Minimum police needed online to start the robbery
wx.DispatchType = "cd_dispatch" -- [cd_dispatch / linden / custom (you'll need to edit the client/client_editme.lua) ]
wx.PoliceCanRob = false -- Allow players with police jobs to rob?
wx.Cooldown = 15 -- Cooldown for each safe in minutes
wx.EnableLogs = true -- Enable logging to discord? (Set your webhook in server/server_editme.lua)

wx.Locations = {
    {
        Position = vector3(-43.3865, -1748.3951, 29.4210), -- Target location
        Reward = 'black_money', -- Item to get after successful robbery
        RewardRange = {5000, 15000}, -- Minimum and Maximum count for the reward item
        NeededItem = {"lockpick", 1}, -- itemname, count
        ProgressLength = math.random(10000,25000), -- In ms, how long should the animation be
        Blip = true, -- Show blip
        Robbed = false -- Don't touch
    },
    {
        Position = vector3(-43.43, -1748.3, 29.42),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(-1478.94, -375.5, 39.16),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(-1220.85, -916.05, 11.32),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(-709.74, -904.15, 19.21),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(28.21, -1339.14, 29.49),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(1126.77, -980.1, 45.41),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(1159.46, -314.05, 69.2),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(378.17, 333.44, 103.56),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(-1829.27, 798.76, 138.19),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(-2959.64, 387.08, 14.04),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(-3047.88, 585.61, 7.9),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(-3250.02, 1004.43, 12.83),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(546.41, 2662.8, 42.15),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(1169.31, 2717.79, 37.15),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(2672.69, 3286.63, 55.24),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(1959.26, 3748.92, 32.34),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
    {
        Position = vector3(1734.78, 6420.84, 35.03),
        Reward = 'black_money',
        RewardRange = {5000, 15000},
        NeededItem = {"lockpick", 1},
        ProgressLength = math.random(10000,25000),
        Blip = true,
        Robbed = false
    },
}
