-- This distribution is designed to overwrite the original Alliance Base distribution.

--[[
armystorage
	metal_shelves
	crate
medicalstorage
	counter
	blood
	counter
	locker
hall
	desk
	metal_shelves
	crate
	filingcabinet
	fridge
kitchen
	filingcabinet
samplestorage
	blood
	
Modifiers:
	forceForTiles=force spawns for specific tile types.
	forceForRooms=force for specific roomdefs.
	forceForZones=force for specific defined zones (unsure what defines a zone yet).
--]]


local AlyDistributions = {
	
	all = {
	
		blood = {
			rolls = 5,
			items = {
				"HTFAC.HTFACTestTubeBlood", 5,
				"HTFAC.HTFACTestTubeBlood", 5,
				"HTFAC.HTFACTestTubeBlood", 5,
				"HTFAC.HTFACTestTubeBlood", 5,
				"HTFAC.HTFACTestTubeBlood", 5,
				"HTFAC.HTFACTestTubeBlood", 5,
				"HTFAC.HTFACTestTubeBlood", 5,
				"HTFAC.HTFACInjectorSerumWeak", 5,
				"HTFAC.HTFACInjectorSerumWeak", 5,
				"HTFAC.HTFACInjectorSerumWeak", 5,
			}
		},
		
		medicalstorage2 = {
			blood = {
				rolls = 5,
				items = {
					"HTFAC.HTFACTestTubeBlood", 5,
					"HTFAC.HTFACTestTubeBlood", 5,
					"HTFAC.HTFACTestTubeBlood", 5,
					"HTFAC.HTFACTestTubeBlood", 5,
					"HTFAC.HTFACTestTubeBlood", 5,
					"HTFAC.HTFACTestTubeBlood", 5,
					"HTFAC.HTFACTestTubeBlood", 5,
					"HTFAC.HTFACInjectorSerumWeak", 5,
					"HTFAC.HTFACInjectorSerumWeak", 5,
					"HTFAC.HTFACInjectorSerumWeak", 5,
				}
			},
		}
		
	}
	
}
	
-- add loot table additions to the end of Distributions, so the game will take care of merging it.
table.insert(Distributions, AlyDistributions)