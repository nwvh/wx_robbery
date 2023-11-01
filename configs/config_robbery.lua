wx = {}

wx.PoliceJobs = { -- Jobs that count as cops (needed for counting online cops)
    'police',
    'sheriff',
    'trooper',
}

wx.MinPolice = 0 -- Minimum police needed online to start the robbery
wx.DispatchType = "cd_dispatch" -- [cd_dispatch / linden / custom (you'll need to edit the client/client_editme.lua) ]
wx.PoliceCanRob = false -- Allow players with police jobs to rob?
wx.Cooldown = 15 -- Cooldown for each safe in minutes
wx.EnableLogs = true -- Enable logging to discord? (Set your webhook in server/server_editme.lua)

wx.SafeLocations = {
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


wx.RegisterLocations = {
    {
        Position = vector3(-47.24, -1757.65, 29.53),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-48.58, -1759.21, 29.59),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-1486.26, -378.0, 40.16),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-1222.03, -908.32, 12.32),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-706.08, -915.42, 19.21),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-706.16, -913.5, 19.21),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(24.47, -1344.99, 29.49),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(24.45, -1347.37, 29.49),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1134.15, -982.53, 46.41),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1165.05, -324.49, 69.2),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1164.7, -322.58, 69.2),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(373.14, 328.62, 103.56),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(372.57, 326.42, 103.56),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-1818.9, 792.9, 138.08),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-1820.17, 794.28, 138.08),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-2966.46, 390.89, 15.04),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-3041.14, 583.87, 7.9),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-3038.92, 584.5, 7.9),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-3244.56, 1000.14, 12.83),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-3242.24, 999.98, 12.83),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(549.42, 2669.06, 42.15),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(549.05, 2671.39, 42.15),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1165.9, 2710.81, 38.15),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(2676.02, 3280.52, 55.24),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(2678.07, 3279.39, 55.24),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1958.96, 3741.98, 32.34),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1960.13, 3740.0, 32.34),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1728.86, 6417.26, 35.03),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(1727.85, 6415.14, 35.03),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(-161.07, 6321.23, 31.5),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(160.52, 6641.74, 31.6),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
    {
        Position = vector3(162.16, 6643.22, 31.6),
        Reward = {"money", math.random(2500,8000)},
        NeededItem = false,
        NeedArmed = true,
        
        Robbed = false
    },
}