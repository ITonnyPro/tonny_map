VorpCore = {}
local VorpInv

TriggerEvent("getCore", function(core)
    VorpCore = core
end)

VorpInv = exports.vorp_inventory:vorp_inventoryApi()

RegisterNetEvent('tonny_map:mapcheck')
AddEventHandler("tonny_map:mapcheck", function()
    count = VorpInv.getItemCount(source, Config.item)

	if count and count > 0 then
		TriggerClientEvent("tonny_map:checkmap", source, true)
	else
		TriggerClientEvent("tonny_map:checkmap", source, false)
	end
end)