CreateThread(function()

while true do
    Wait(0)
    local player = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(player, false)
    local speed = GetEntitySpeed(GetVehiclePedIsIn(player, false)) * 3.6

    if IsPedInAnyVehicle(player,false) and speed > 100 then
        local chance = 0.5
        if math.random(0,10000) < chance then 
            Wait(1000)
            showAlert()
            Wait(5000)
            SetVehicleEngineHealth(vehicle, 0)
        end
    end

end


end)


function showAlert()

    AddTextEntry('CH_ALERT', 'WARNING, YOUR CAR IS OVERHEATING')
    BeginTextCommandDisplayHelp('CH_ALERT')
    EndTextCommandDisplayHelp(0,false,true,5000)


end