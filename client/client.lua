local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------------------

-- prompts
Citizen.CreateThread(function()
    for _, trapperLocation in pairs(Config.TrapperLocations) do
        createTrapperPrompt(trapperLocation)
        if trapperLocation.showblip then
            createTrapperBlip(trapperLocation)
        end
    end
end)

function createTrapperPrompt(locationData)
    local promptText = Lang:t('menu.open') .. locationData.name

    exports['rsg-core']:createPrompt(locationData.location, locationData.coords, RSGCore.Shared.Keybinds['J'], promptText, {
        type = 'client',
        event = 'rsg-trapperplus:client:menu',
        args = {},
    })
end

function createTrapperBlip(locationData)
    local trapperBlip = AddBlipForCoord(locationData.coords.x, locationData.coords.y, locationData.coords.z)

    SetBlipSprite(trapperBlip, Config.Blip.blipSprite)
    SetBlipScale(trapperBlip, Config.Blip.blipScale)
    SetBlipDisplay(trapperBlip, Config.Blip.blipDisplay)
    SetBlipColour(trapperBlip, Config.Blip.blipColor)
    SetBlipAsShortRange(trapperBlip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(Config.Blip.blipName)
    EndTextCommandSetBlipName(trapperBlip)
end
-- prompts

-----------------------------------------------------------------------------------

-- trapper menu
RegisterNetEvent('rsg-trapperplus:client:menu', function()
    lib.registerContext(
        {
            id = 'trapper_menu',
            title = Lang:t('menu.trapper_menu'),
            position = 'top-right',
            options = {
                {
                    title = Lang:t('menu.sell_stored_pelts'),
                    description = Lang:t('text.sell_store_pelts'),
                    icon = 'fas fa-paw',
                    event = 'rsg-trapperplus:client:sellpelts',
                },
                {
                    title = Lang:t('menu.open_trapper_shop'),
                    description = Lang:t('text.buy_items_from_the_trapper'),
                    icon = 'fas fa-shopping-basket',
                    event = 'rsg-trapperplus:client:OpenTrapperShop',
                },
            }
        }
    )
    lib.showContext('trapper_menu')
end)

-----------------------------------------------------------------------------------

-- process bar before sell pelts
RegisterNetEvent('rsg-trapperplus:client:sellpelts', function()
    RSGCore.Functions.Progressbar('make-product', Lang:t('progressbar.checking_pelts'), Config.SellTime, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerServerEvent('rsg-trapperplus:server:sellpelts')
    end)
end)

-----------------------------------------------------------------------------------

-- pickup pelt and store in inventory
Citizen.CreateThread(function()
    while true do
        Wait(1000)
        local ped = PlayerPedId()
        local holding = Citizen.InvokeNative(0xD806CD2A4F2C2996, ped)
        local pelthash = Citizen.InvokeNative(0x31FEF6A20F00B963, holding)
        if Config.Debug == true then
            print("holding: "..tostring(holding))
            print("pelthash: "..tostring(pelthash))
        end
        if holding ~= false then
            for i = 1, #Config.Pelts do
                if pelthash == Config.Pelts[i].pelthash then
                    local name = Config.Pelts[i].name
                    local rewarditem1 = Config.Pelts[i].rewarditem1
                    local rewarditem2 = Config.Pelts[i].rewarditem2
                    local rewarditem3 = Config.Pelts[i].rewarditem3
                    local rewarditemAmount1 = Config.Pelts[i].rewarditemAmount1
                    local rewarditemAmount2 = Config.Pelts[i].rewarditemAmount2
                    local rewarditemAmount3 = Config.Pelts[i].rewarditemAmount3
                    local deleted = DeleteThis(holding)
                    if deleted then
                        RSGCore.Functions.Notify(name.. Lang:t('primary.stored'), 'primary')
                        TriggerServerEvent('rsg-trapperplus:server:storepelt', rewarditem1, rewarditem2, rewarditem3, rewarditemAmount1, rewarditemAmount2, rewarditemAmount3)
                    else
                        RSGCore.Functions.Notify( Lang:t('error.something_went_wrong'), 'error')
                    end
                end
            end
        end
    end
end)

-----------------------------------------------------------------------------------

-- delete holding
function DeleteThis(holding)
    NetworkRequestControlOfEntity(holding)
    SetEntityAsMissionEntity(holding, true, true)
    Wait(100)
    DeleteEntity(holding)
    Wait(500)
    local entitycheck = Citizen.InvokeNative(0xD806CD2A4F2C2996, PlayerPedId())
    local holdingcheck = GetPedType(entitycheck)
    if holdingcheck == 0 then
        return true
    else
        return false
    end
end

-----------------------------------------------------------------------------------

-- trapper shop
RegisterNetEvent('rsg-trapperplus:client:OpenTrapperShop')
AddEventHandler('rsg-trapperplus:client:OpenTrapperShop', function()
    local ShopItems = {}
    ShopItems.label = Lang:t('text.trapper_shop')
    ShopItems.items = Config.TrapperShop
    ShopItems.slots = #Config.TrapperShop
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "TrapperShop_"..math.random(1, 99), ShopItems)
end)

-----------------------------------------------------------------------------------
