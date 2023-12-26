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

-- sell pelt from inventory
RegisterServerEvent('rsg-trapperplus:server:sellpelts')
AddEventHandler('rsg-trapperplus:server:sellpelts', function()
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    
    if not Player then
        return
    end

    local price = 0
    local hasPelts = false

    if Player.PlayerData.items and next(Player.PlayerData.items) then
        for k, v in pairs(Player.PlayerData.items) do
            local peltType = GetPeltType(k)

            if peltType then
                local peltConfig = Config.PeltTypes[peltType]

                if peltConfig then
                    price = price + (peltConfig.Price * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(k, Player.PlayerData.items[k].amount)
                    hasPelts = true
                end
            end
        end

        if hasPelts then
            Player.Functions.AddMoney(Config.PaymentType, price, "pelts-sold")
            RSGCore.Functions.Notify(src, Lang:t('success.you_have_sold_all_your_pelts_for') .. price, 'success')
        else
            RSGCore.Functions.Notify(src, Lang:t('error.you_dont_have_any_pelts_to_sell'), 'error')
        end
    end
end)

function GetPeltType(itemName)
    local peltTypes = {
        "bear", "black_bear", "boar", "buck", "buffalo", "bull", "cougar", "cow", "coyote",
        "deer", "elk", "fox", "goat", "javelina", "moose", "ox", "panther", "pig", "pronghorn",
        "bighornram", "sheep", "wolf", "large_alligator", "alligator", "legendary_alligator",
        "legendary_boar", "legendary_cougar", "legendary_coyote", "legendary_panther", "legendary_wolf", "raccoon"
    }

    for _, peltType in ipairs(peltTypes) do
        if string.match(itemName, peltType) then
            return peltType
        end
    end

    return nil
end



--------------------------------------------------------------------------------------------------
-- start version check
--------------------------------------------------------------------------------------------------
CheckVersion()
