require "ISUI/ISWorldObjectContextMenu"
require "ActionTakeBloodSample"

HTFACContextMenu = {}

HTFACContextMenu.doHTFACContextMenu = function(player, context, worldobjects)
	-- Check if body is a zombie body and has not been looted.
	if body and not ActionTakeBloodSample.isLooted(body) and body:isZombie() then
		-- Check if player has test tube and blade tool and add context menu option if true.
		if HTFACContextMenu.getItem(player,"HTFAC.HTFACTestTubeEmpty") and HTFACContextMenu.getItem(player,"Base.Scalpel") then
			-- Context option to take a blood sample.
			context:addOption(getText("ContextMenu_Take_Blood_Sample"), worldobjects, HTFACContextMenu.onTakeBloodSample, body, player)
		end
	end
end

HTFACContextMenu.getItem = function(player, item)
	local playerObj = getSpecificPlayer(player)
	local playerInv = playerObj:getInventory()
	return playerInv:getFirstTypeRecurse(item)
end

HTFACContextMenu.onTakeBloodSample = function(worldobjects, WItem, player)
	local playerObj = getSpecificPlayer(player)
	local playerInv = playerObj:getInventory()
	
	-- Cancel action if no blade tool.
	if WItem:getSquare() and luautils.walkAdj(playerObj, WItem:getSquare()) then
		local bladeTool = HTFACContextMenu.getItem(player,"Base.Scalpel")
		if not bladeTool then
			return
		end
		
		-- Cancel action if no test tube.
		local testTube = playerInv:getFirstTypeRecurse("HTFAC.HTFACTestTubeEmpty")
		if not testTube then
			return
		end
		
		-- Equip blade and test tube in primary and secondary.
		ISWorldObjectContextMenu.equip(playerObj, playerObj:getPrimaryHandItem(), bladeTool, true, false)
		ISWorldObjectContextMenu.equip(playerObj, playerObj:getSecondaryHandItem(), testTube, false, false)

		-- Take the blood sample.
		ISTimedActionQueue.add(ActionTakeBloodSample:new(playerObj, WItem, 200))
	end
end

HTFACContextMenu.fetchZombie = function()
	local x = getMouseX()
	local y = getMouseY()

	local square = HTFACContextMenu.pickSquare(x, y)
	if square then
		for i = 1, square:getMovingObjects():size() do
			local obj = square:getMovingObjects():get(i - 1)
			if instanceof(obj, "IsoZombie") then
				return obj
			end
		end
	end
end

HTFACContextMenu.pickSquare = function(x, y)
	local zoom = getCore():getZoom(0)
	local z = getSpecificPlayer(0):getSquare():getZ()
	local worldX = IsoUtils.XToIso(x * zoom, y * zoom, z)
	local worldY = IsoUtils.YToIso(x * zoom, y * zoom, z)
	return getCell():getGridSquare(worldX, worldY, z)
end

Events.OnFillWorldObjectContextMenu.Add(HTFACContextMenu.doHTFACContextMenu)