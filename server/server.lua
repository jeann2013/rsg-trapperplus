local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------
-- version checker
-----------------------------------------------------------------------
local function versionCheckPrint(_type, log)
    local color = _type == 'success' and '^2' or '^1'

    print(('^5['..GetCurrentResourceName()..']%s %s^7'):format(color, log))
end

local function CheckVersion()
    PerformHttpRequest('https://raw.githubusercontent.com/Rexshack-RedM/rsg-trapperplus/main/version.txt', function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')

        if not text then 
            versionCheckPrint('error', 'Currently unable to run a version check.')
            return 
        end

        --versionCheckPrint('success', ('Current Version: %s'):format(currentVersion))
        --versionCheckPrint('success', ('Latest Version: %s'):format(text))
        
        if text == currentVersion then
            versionCheckPrint('success', 'You are running the latest version.')
        else
            versionCheckPrint('error', ('You are currently running an outdated version, please update to version %s'):format(text))
        end
    end)
end

-----------------------------------------------------------------------

-- store pelt to inventory
RegisterNetEvent('rsg-trapperplus:server:storepelt')
AddEventHandler('rsg-trapperplus:server:storepelt', function(rewarditem1, rewarditem2, rewarditem3, rewarditemAmount1, rewarditemAmount2, rewarditemAmount3)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(rewarditem1, rewarditemAmount1)
    Player.Functions.AddItem(rewarditem2, rewarditemAmount2)
    Player.Functions.AddItem(rewarditem3, rewarditemAmount3)
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem1], "add")
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem2], "add")
    TriggerClientEvent('inventory:client:ItemBox', src, RSGCore.Shared.Items[rewarditem3], "add")
end)

RegisterServerEvent('rsg-trapperplus:server:sellpelts')
AddEventHandler('rsg-trapperplus:server:sellpelts', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local price = 0
    local haspelts = false

    local peltTypes = {
        "bear", "black_bear", "boar", "buck", "buffalo", "bull", "cougar", "cow",
        "coyote", "deer", "elk", "fox", "goat", "javelina", "moose", "ox", "panther",
        "pig", "pronghorn", "bighornram", "sheep", "wolf", "large_alligator",
        "alligator", "raccoon", "legendary_alligator", "legendary_boar",
        "legendary_cougar", "legendary_coyote", "legendary_panther", "legendary_wolf",
        "legendary_bighorn_ram", "legendary_tatanka_bison", "legendary_moon_beaver",
        "legendary_zizi_beaver", "legendary_night_beaver"
    }

    for _, peltType in ipairs(peltTypes) do
        for quality, priceMultiplier in pairs(Config[quality.."PeltPrice"]) do
            local itemName = quality.."_"..peltType.."_pelt"
            if Player.PlayerData.items[itemName] then
                price = price + (priceMultiplier * Player.PlayerData.items[itemName].amount)
                Player.Functions.RemoveItem(itemName, Player.PlayerData.items[itemName].amount)
                haspelts = true
            end
        end
    end
end)


--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()
