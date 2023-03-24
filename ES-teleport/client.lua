ESX = exports['es_extended']:getSharedObject()

Citizen.CreateThread(function()
 for _, data in pairs(Config.Loc) do
        RegisterCommand(data[1], function(source, args, rawCommand)
             local ped = PlayerPedId()
             SetEntityCoords(ped, data[2], false, false, false, true)
             if Config.NotifyType == "K5" then
                 exports["k5_notify"]:notify('Szerver', 'Sikeres teleport!', 'success', 5000)                                
             elseif Config.NotifyType == "ESX" then
                  ESX.ShowNotification("Sikeres teleport!", "success", 5000)                              
             end
        end)
    end
end)


