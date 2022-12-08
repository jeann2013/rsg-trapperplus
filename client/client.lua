local QRCore = exports['qr-core']:GetCoreObject()

-----------------------------------------------------------------------------------

-- prompts
Citizen.CreateThread(function()
    for trapper, v in pairs(Config.TrapperLocations) do
        exports['qr-core']:createPrompt(v.location, v.coords, QRCore.Shared.Keybinds['J'], 'Open ' .. v.name, {
            type = 'client',
            event = 'rsg-trapperplus:client:menu',
            args = {},
        })
        if v.showblip == true then
            local TrapperBlip = Citizen.InvokeNative(0x554D9D53F696D002, 1664425300, v.coords)
            SetBlipSprite(TrapperBlip, GetHashKey(Config.Blip.blipSprite), true)
            SetBlipScale(TrapperBlip, Config.Blip.blipScale)
            Citizen.InvokeNative(0x9CB1A1623062F402, TrapperBlip, Config.Blip.blipName)
        end
    end
end)

-- draw marker if set to true in config
CreateThread(function()
    while true do
        local sleep = 0
        for trapper, v in pairs(Config.TrapperLocations) do
            if v.showmarker == true then
                Citizen.InvokeNative(0x2A32FAA57B937173, 0x07DCE236, v.coords, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 255, 215, 0, 155, false, false, false, 1, false, false, false)
            end
        end
        Wait(sleep)
    end
end)

-----------------------------------------------------------------------------------

-- trapper menu
RegisterNetEvent('rsg-trapperplus:client:menu', function()
    exports['qr-menu']:openMenu({
        {
            header = 'Trapper Menu',
            isMenuHeader = true,
        },
        {
            header = "Sell Stored Pelts",
            txt = "text goes here",
            icon = "fas fa-paw",
            params = {
                event = 'rsg-trapperplus:client:sellpelts',
                isServer = false,
            }
        },
        {
            header = "Open Trapper Shop",
            txt = "buy items from the fish vendor",
            icon = "fas fa-shopping-basket",
            params = {
                event = 'rsg-trapperplus:client:OpenTrapperShop',
                isServer = false,
                args = {}
            }
        },
        {
            header = "Close Menu",
            txt = '',
            params = {
                event = 'qr-menu:closeMenu',
            }
        },
    })
end)

-----------------------------------------------------------------------------------

-- process bar before sell pelts
RegisterNetEvent('rsg-trapperplus:client:sellpelts', function()
    QRCore.Functions.Progressbar('make-product', 'Checking Pelts', Config.SellTime, false, true, {
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
        for i, row in pairs(Config.Pelts) do
            if pelthash == Config.Pelts[i]["pelthash"] then
                local rewarditem = Config.Pelts[i]["rewarditem"]
                local name = Config.Pelts[i]["name"]
                if Config.Debug == true then
                    print("rewarditem: "..tostring(rewarditem))
                    print("name: "..tostring(name))
                end
                local deleted = DeleteThis(holding)
                if deleted then
                    QRCore.Functions.Notify(name..' Stored', 'primary')
                    TriggerServerEvent('rsg-trapperplus:server:storepelt', rewarditem)
                else
                    QRCore.Functions.Notify('something went wrong!', 'error')
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
    ShopItems.label = "Trapper Shop"
    ShopItems.items = Config.TrapperShop
    ShopItems.slots = #Config.TrapperShop
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "TrapperShop_"..math.random(1, 99), ShopItems)
end)

-----------------------------------------------------------------------------------
