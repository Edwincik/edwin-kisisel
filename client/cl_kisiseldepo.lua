local QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do
        sleep = 100
        local plyPed = PlayerPedId()
        local plyCoords = GetEntityCoords(plyPed)
        
        for k, v in pairs(Config.KisiselDepolar) do
            local dist = #(plyCoords - v)

            if dist < 2.0 then
                sleep = 5
                QBCore.Functions.DrawText3D(v.x, v.y, v.z, "[E] Kisisel Depo")
                if IsControlJustPressed(0, 38) then
                    TriggerEvent("inventory:client:SetCurrentStash", "kisiseldepo_".. QBCore.Functions.GetPlayerData().citizenid)
                    TriggerServerEvent("inventory:server:OpenInventory", "stash", "kisiseldepo_".. QBCore.Functions.GetPlayerData().citizenid, {
                        maxweight = 1000000,
                        slots = 200
                    })
                end
            end
        end
        Wait(sleep)
    end
end)

print("SORUNSUZ ÇALIŞIYORUM /W EDWİN <3")