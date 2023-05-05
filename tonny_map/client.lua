local checkmap = false


function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

RegisterNetEvent('tonny_map:checkmap', function(check)
    checkmap = check
end)

CreateThread(function()
	while true do
		TriggerServerEvent('tonny_map:mapcheck')
		if checkmap == false then
			SetMinimapHideFow(false)
		else
			SetMinimapHideFow(true)
		end
		Wait(3000)
	end
end)