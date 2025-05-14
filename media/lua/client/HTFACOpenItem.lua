-- Special thanks to Wintermute Digital whose video and blog showed me how to implement the probability distributor.
-- Designing Luck | A Guide to Loot Distributions: https://wintermutedigital.com/post/probcdf/

--[---------------------------------- STARTING VARIABLES ----------------------------------]--

local ZombRand = ZombRand --Used to randomly generate numbers.
--How to use:
--ZombRand(1,3) will pick a number between 1 and 2.
--ZombRand(0,4) will pick a number between 0, and 3.

--Item tables. The tables' rarity is defined using the itemRarity table.
--All items within the same item table have an equal probability of being selected.
local junk = {} 
local common = {}
local uncommon = {}
local rare = {}
local veryrare = {}

local itemTier = {} --Determines the tier of an item.
local itemRarity = {} --Determines the likelyhood of this tier being selected. Seems to work best when the totalRarity = 1000+
local multiSpawn = {} --Determines if a tier can spawn items more than once.

--[---------------------------------- RESET TABLES ----------------------------------]--

--Reset all tables to default values.
local function HTFACResetTables()
	junk = {}
	common = {}
	uncommon = {}
	rare = {}
	veryrare = {}
	itemTier = {}
	itemRarity = {}
	multiSpawn = {}
	collectgarbage()
end

--[---------------------------------- PROBABILITY DISTRIBUTOR ----------------------------------]--

local function HTFACProbabilityDistributor(itemTier, itemRarity)
	local totalRarity = 0
	
	--Determine the total rarity weight by adding all the rarities together.
	for _, r in ipairs(itemRarity) do
		totalRarity = totalRarity + r
	end
	
	randomV = ZombRand(0, totalRarity) --Determines which tier item will spawn.
	local runningTotal = 0
	local itemTierIndex = 0
	
	for i = 1, #itemRarity, 1 do
		itemTierIndex = itemTierIndex + 1
		runningTotal = runningTotal + itemRarity[i]		
		if randomV < runningTotal then
			return {itemTierIndex, itemTier[i]}
		end
	end
end

--[---------------------------------- SPAWN ITEMS ----------------------------------]--

local function HTFACSpawnOpenedItems(player, itemTier, ItemRarity, multiSpawn, numItems)
	--Set initial spawn value of all item tiers.
	local tierSpawned = {}
	for i = 1, #itemTier, 1 do
		tierSpawned[i] = false
	end
	
	local i = 1
	while i <= numItems do
		--Returns an array: first index is item tier, second index is the itemlist.
		local itemArray = HTFACProbabilityDistributor(itemTier, itemRarity)
		local tier = itemArray[1]
		local itemList = itemArray[2]
		
		--Determine which item from the list is spawned.
		itemIndex = ZombRand(1, #itemList + 1)
		item = itemList[itemIndex]
		
		--DEBUG COMMAND:
		--print("#itemList = " .. #itemList + 1)
		--[[for j = 1, #itemList, 1 do
			print("itemList[" .. j .. "]= " .. itemList[j])
		end--]]
		--print("itemIndex = " .. itemIndex)
		--print("item = " .. itemList[itemIndex])
		
		--Spawn the item if it meets the conditions.
		if multiSpawn[tier] then --If multiSpawn is true, then spawn the item regardless if item from that tier has already spawned.
			player:getInventory():AddItem(item)
			i = i + 1
		else --If multiSpawn is false, then determine if an item has already been spawned from that tier.
			if not tierSpawned[tier] then --Spawn item if item from that tier has not spawned yet, else skip and reroll for a different item.
				tierSpawned[tier] = true
				player:getInventory():AddItem(item)
				i = i + 1
			end
		end
	end
end

--[---------------------------------- OPEN CHEMISTRY SET ----------------------------------]--

function HTFACOpenChemistrySet(items, result, player)
	--Ensure tables are reset to empty defaults.
	HTFACResetTables()
	--Defines all the potential items which can spawn for this function.
	junk = {
		"Pen",
		"Pencil",
		"SheetPaper2",
		"Notebook",
		"Journal",
	}
	common = {
		"HTFAC.HTFACTestTubeEmpty",
		"HTFAC.HTFACBeakerEmpty",
		"HTFAC.HTFACConicalFlaskEmpty",
		"HTFAC.HTFACConicalFlaskEmpty",
		"HTFAC.HTFACBoilingFlaskEmpty",
		"HTFAC.HTFACGraduatedCylinderEmpty",
	}
	uncommon = {
		"HTFAC.HTFACLabBalance",
		"HTFAC.HTFACChemistryStand",
		"HTFAC.HTFACBunsenBurner",
		"HTFAC.HTFACChemicals",
	}
	rare = {
		"HTFAC.HTFACLiteratureChemistry101",
	}
	veryrare = {
		"HTFAC.HTFACMicroscope",
	}
	
	--Defines the item tiers, their corresponding rarity, and whether or not a tier can spawn multiple items.
	itemTier		= {junk,	common,	uncommon,	rare,	veryrare	}
	itemRarity	= {250,		500,			250,				25,		1				}
	multiSpawn = {true,	true,		false,			false,	false		}
	
	--Determine number of items to spawn.
	local numItems = ZombRand(2,4)
	print("numItems = " .. numItems)
	
	--Spawn the item(s).
	HTFACSpawnOpenedItems(player, itemTier, ItemRarity, multiSpawn, numItems)
	
	return
end


--[---------------------------------- OPEN PATIENT FILE ----------------------------------]--

function HTFACOpenFilePatient(items, result, player)
	--Ensure tables are reset to empty defaults.
	HTFACResetTables()
	--Defines all the potential items which can spawn for this function.
	junk = {
		"SheetPaper2",
	}
	common = {
		"HTFAC.HTFACReportMicroscopic",
		"HTFAC.HTFACReportChemical",
		"HTFAC.HTFACReportBlood",
	}
	uncommon = {
		"HTFAC.HTFACReportAutopsy",
	}
	
	--Defines the item tiers, their corresponding rarity, and whether or not a tier can spawn multiple items.
	itemTier		= {junk,	common,	uncommon	}
	itemRarity	= {200,		750,			50				}
	multiSpawn = {true,	true,		false			}
	
	--Determine number of items to spawn.
	local numItems = ZombRand(1,4)
	print("numItems = " .. numItems)
	
	--Spawn the items.
	HTFACSpawnOpenedItems(player, itemTier, ItemRarity, multiSpawn, numItems)
	
	return
end


--[---------------------------------- OPEN RESEARCH FILE ----------------------------------]--

function HTFACOpenFileResearch(items, result, player)
	--Ensure tables are reset to empty defaults.
	HTFACResetTables()
	--Defines all the potential items which can spawn for this function.
	common = {
		"HTFAC.HTFACReportMicroscopic",
		"HTFAC.HTFACReportChemical",
		"HTFAC.HTFACReportBlood",
	}
	uncommon = {
		"HTFAC.HTFACReportAutopsy",
	}
	rare = {
		"HTFAC.HTFACReportBreakthrough",
	}
	veryrare = {
		"HTFAC.HTFACReportBreakthroughWeak",
	}
	
	--Defines the item tiers, their corresponding rarity, and whether or not a tier can spawn multiple items.
	itemTier		= {common,	uncommon,	rare,	veryrare	}
	itemRarity	= {700,			200,				100,		1				}
	multiSpawn = {true,		false,			false,	false		}
	
	--Determine number of items to spawn.
	local numItems = ZombRand(1,4)
	print("numItems = " .. numItems)
	
	--Spawn the items.
	HTFACSpawnOpenedItems(player, itemTier, ItemRarity, multiSpawn, numItems)
	
	return
end