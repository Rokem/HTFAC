require "Items/SuburbsDistributions"

--[[
//RoomDef
	//ObjectDef

laboratory
	desk
	counter
	filingcabinet
	freezer
	fridge
	metal_shelves
	bin
	
medclinic
	desk
	metal_shelves

kennels
	counter
	metal_shelves
	
pharmacystorage
	filingcabinet
	freezer
	fridge
	metal_shelves
	
hospitalstorage
	metal_shelves

morgue
	desk
	counter
	filingcabinet
	freezer
	fridge
	metal_shelves
	bin
	
Modifiers:
	forceForTiles=force spawns for specific tile types.
	forceForRooms=force for specific roomdefs.
	forceForZones=force for specific defined zones (unsure what defines a zone yet).
--]]

--[------------------- LABORATORY -------------------]--
SuburbsDistributions["laboratory"] = {
	bin = {
		rolls = 1,
		items = {
			"HTFAC.HTFACReportMicroscopic", 1,
			"HTFAC.HTFACReportChemical", 1,
			--BASE ITEMS:
			"Gloves_Surgical", 3,
			"Gloves_Surgical", 3,
			"Hat_SurgicalMask_Blue", 3,
			"Hat_SurgicalMask_Blue", 3,
			"SheetPaper2", 4,
			"SheetPaper2", 4,
			"DeadRat", 2,
			"DeadMouse", 2,
			"DeadMouse", 2,
			"DeadMouse", 2,
			"ScrapMetal", 2,
			"WaterBottleEmpty", 2,
			"WaterBottleEmpty", 2,
			"SmashedBottle", 1,
			"SmashedBottle", 1,
			"Garbagebag", 100,
		}
	},
	desk = {
		rolls = 3, 
		items = {
			"HTFAC.HTFACMicroscope", 2,
			"HTFAC.HTFACCentrifuge", 1,
			"HTFAC.HTFACLabBalance", 2,
			"HTFAC.HTFACChemistryStand", 2,
			"HTFAC.HTFACBunsenBurner", 2,
			"HTFAC.HTFACBeakerEmpty", 10,
			"HTFAC.HTFACBeakerEmpty", 5,
			"HTFAC.HTFACConicalFlaskEmpty", 10,
			"HTFAC.HTFACConicalFlaskEmpty", 5,
			"HTFAC.HTFACBoilingFlaskEmpty", 10,
			"HTFAC.HTFACBoilingFlaskEmpty", 5,
			"HTFAC.HTFACGraduatedCylinderEmpty", 10,
			"HTFAC.HTFACGraduatedCylinderEmpty", 5,
			"HTFAC.HTFACTestTubeEmpty", 20,
			"HTFAC.HTFACTestTubeEmpty", 10,
			"HTFAC.HTFACTestTubeEmpty", 5,
			"HTFAC.HTFACInjectorEmpty", 10,
			"HTFAC.HTFACInjectorEmpty", 5,
			"HTFAC.HTFACPackTestTubes", 2,
			"HTFAC.HTFACPackTestTubes", 1,
			"HTFAC.HTFACPackInjectors", 1,
			"HTFAC.HTFACPackCottonSwabs", 0.5,
			"HTFAC.HTFACChemicals", 5,
			"HTFAC.HTFACChemicals", 2,
			"HTFAC.HTFACChemicals", 1,
			"HTFAC.HTFACReportMicroscopic", 1,
			"HTFAC.HTFACReportChemical", 1,
			"HTFAC.HTFACFileResearch", 2,
			--BASE ITEMS:
			"PropaneTank", 2,
			"FirstAidKit", 5,
			"Scalpel", 10,
			"Scalpel", 5,
			"Scissors", 5,
			"Tweezers", 10,
			"Tweezers", 5,
			"AlcoholWipes", 10,
			"AlcoholWipes", 5,
			"CottonBalls", 10,
			"CottonBalls", 5,
			"Disinfectant", 10,
			"Disinfectant", 5,
			"Gloves_Surgical", 5,
			"Hat_SurgicalMask_Blue", 5,
			"Glasses_SafetyGoggles", 5,
		},
		junk = {
			rolls = 1,
			items = {
				"BluePen", 4,
				"Notebook", 4,
				"Paperclip", 2,
				"Pen", 6,
				"Pencil", 6,
				"RedPen", 4,
				"Stapler", 2,
				"Staples", 2,
				"SheetPaper2", 6,
				"Briefcase", 0.5,
				"Eraser", 2,
				"Lighter", 2,
				"Scotchtape", 2,
			}
		}
	},
	counter = {
		rolls = 3, 
		items = {
			"HTFAC.HTFACMicroscope", 2,
			"HTFAC.HTFACCentrifuge", 1,
			"HTFAC.HTFACLabBalance", 2,
			"HTFAC.HTFACChemistryStand", 2,
			"HTFAC.HTFACBunsenBurner", 2,
			"HTFAC.HTFACBeakerEmpty", 10,
			"HTFAC.HTFACBeakerEmpty", 5,
			"HTFAC.HTFACConicalFlaskEmpty", 10,
			"HTFAC.HTFACConicalFlaskEmpty", 5,
			"HTFAC.HTFACBoilingFlaskEmpty", 10,
			"HTFAC.HTFACBoilingFlaskEmpty", 5,
			"HTFAC.HTFACGraduatedCylinderEmpty", 10,
			"HTFAC.HTFACGraduatedCylinderEmpty", 5,
			"HTFAC.HTFACTestTubeEmpty", 20,
			"HTFAC.HTFACTestTubeEmpty", 10,
			"HTFAC.HTFACTestTubeEmpty", 5,
			"HTFAC.HTFACInjectorEmpty", 10,
			"HTFAC.HTFACInjectorEmpty", 5,
			"HTFAC.HTFACPackTestTubes", 2,
			"HTFAC.HTFACPackTestTubes", 1,
			"HTFAC.HTFACPackInjectors", 1,
			"HTFAC.HTFACPackCottonSwabs", 0.5,
			"HTFAC.HTFACChemicals", 5,
			"HTFAC.HTFACChemicals", 2,
			"HTFAC.HTFACChemicals", 1,
			"HTFAC.HTFACReportMicroscopic", 1,
			"HTFAC.HTFACReportChemical", 1,
			"HTFAC.HTFACFileResearch", 2,
			--BASE ITEMS:
			"PropaneTank", 2,
			"FirstAidKit", 5,
			"Scalpel", 10,
			"Scalpel", 5,
			"Scissors", 5,
			"Tweezers", 10,
			"Tweezers", 5,
			"AlcoholWipes", 10,
			"AlcoholWipes", 5,
			"CottonBalls", 10,
			"CottonBalls", 5,
			"Disinfectant", 10,
			"Disinfectant", 5,
			"Gloves_Surgical", 5,
			"Hat_SurgicalMask_Blue", 5,
			"Glasses_SafetyGoggles", 5,
		},
		junk = {
			rolls = 1,
			items = {
				"BluePen", 4,
				"Notebook", 4,
				"Paperclip", 2,
				"Pen", 6,
				"Pencil", 6,
				"RedPen", 4,
				"Stapler", 2,
				"Staples", 2,
				"SheetPaper2", 6,
				"Briefcase", 0.5,
				"Eraser", 2,
				"Lighter", 2,
				"Scotchtape", 2,
			}
		}
	},
	filingcabinet = {
		rolls = 4, 
		items = {
			"HTFAC.HTFACFileResearch", 50,
			"HTFAC.HTFACFileResearch", 20,
			"HTFAC.HTFACFileResearch", 20,
			"HTFAC.HTFACFileResearch", 10,
			"HTFAC.HTFACFileResearch", 10,
			"HTFAC.HTFACFileResearch", 10,
			"HTFAC.HTFACFileResearch", 5,
			"HTFAC.HTFACFileResearch", 5,
			"HTFAC.HTFACFileResearch", 5,
			"HTFAC.HTFACFileResearch", 5,
			"HTFAC.HTFACReportMicroscopic", 5,
			"HTFAC.HTFACReportMicroscopic", 5,
			"HTFAC.HTFACReportMicroscopic", 1,
			"HTFAC.HTFACReportChemical", 5,
			"HTFAC.HTFACReportChemical", 5,
			"HTFAC.HTFACReportChemical", 1,
			--BASE ITEMS:
			"Journal", 2,
			"Journal", 2,
			"Notebook", 2,
			"Notebook", 2,
			"SheetPaper2", 2,
			"SheetPaper2", 2,
		}
	},
	freezer = {
		rolls = 2, 
		items = {

		}
	},
	fridge = {
		rolls = 2, 
		items = {
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 5,
			"HTFAC.HTFACChemicals", 5,
		}
	},
	metal_shelves = {
		rolls = 4, 
		items = {
			"HTFAC.HTFACMicroscope", 2,
			"HTFAC.HTFACCentrifuge", 2,
			"HTFAC.HTFACLabBalance", 2,
			"HTFAC.HTFACChemistryStand", 2,
			"HTFAC.HTFACBunsenBurner", 2,
			"HTFAC.HTFACBeakerEmpty", 10,
			"HTFAC.HTFACBeakerEmpty", 5,
			"HTFAC.HTFACConicalFlaskEmpty", 10,
			"HTFAC.HTFACConicalFlaskEmpty", 5,
			"HTFAC.HTFACBoilingFlaskEmpty", 10,
			"HTFAC.HTFACBoilingFlaskEmpty", 5,
			"HTFAC.HTFACGraduatedCylinderEmpty", 10,
			"HTFAC.HTFACGraduatedCylinderEmpty", 5,
			"HTFAC.HTFACPackTestTubes", 20,
			"HTFAC.HTFACPackTestTubes", 10,
			"HTFAC.HTFACPackTestTubes", 5,
			"HTFAC.HTFACPackInjectors", 10,
			"HTFAC.HTFACPackInjectors", 5,
			"HTFAC.HTFACPackCottonSwabs", 5,
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 5,
			--BASE ITEMS:
			"PropaneTank", 2,
			"FirstAidKit", 5,
			"Scalpel", 10,
			"Scalpel", 5,
			"Scissors", 5,
			"Tweezers", 10,
			"Tweezers", 5,
			"AlcoholWipes", 10,
			"AlcoholWipes", 5,
			"CottonBalls", 10,
			"CottonBalls", 5,
			"Disinfectant", 10,
			"Disinfectant", 5,
			"Gloves_Surgical", 8,
			"Gloves_Surgical", 8,
			"Hat_SurgicalMask_Blue", 8,
			"Hat_SurgicalMask_Blue", 8,
			"JacketLong_Doctor", 1,
			"Shirt_Scrubs", 8,
			"Shirt_Scrubs", 8,
			"Trousers_Scrubs", 8,
			"Trousers_Scrubs", 8,
			"Glasses_SafetyGoggles", 8,
		}
	},
}

--[------------------- MORGUE -------------------]--
SuburbsDistributions["morgue"] = {
	bin = {
		rolls = 1,
		items = {
			"HTFAC.HTFACReportMicroscopic", 1,
			"HTFAC.HTFACReportMicroscopic", 1,
			"HTFAC.HTFACReportChemical", 1,
			"HTFAC.HTFACReportChemical", 1,
			--BASE ITEMS:
			"Gloves_Surgical", 3,
			"Gloves_Surgical", 3,
			"Hat_SurgicalMask_Blue", 3,
			"Hat_SurgicalMask_Blue", 3,
			"SheetPaper2", 4,
			"SheetPaper2", 4,
			"SmashedBottle", 1,
			"SmashedBottle", 1,
			"Garbagebag", 100,
		}
	},
	desk = {
		rolls = 3, 
		items = {
			"HTFAC.HTFACMicroscope", 2,
			"HTFAC.HTFACBeakerEmpty", 10,
			"HTFAC.HTFACBeakerEmpty", 5,
			"HTFAC.HTFACBeakerEmpty", 1,
			"HTFAC.HTFACTestTubeEmpty", 8,
			"HTFAC.HTFACTestTubeEmpty", 2,
			"HTFAC.HTFACPackTestTubes", 1,
			"HTFAC.HTFACPackCottonSwabs", 0.5,
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 5,
			"HTFAC.HTFACChemicals", 2,
			"HTFAC.HTFACChemicals", 1,
			"HTFAC.HTFACReportAutopsy", 10,
			"HTFAC.HTFACReportAutopsy", 5,
			"HTFAC.HTFACReportAutopsy", 2,
			"HTFAC.HTFACReportAutopsy", 1,
			--BASE ITEMS:
			"FirstAidKit", 1,
			"Scalpel", 50,
			"Tweezers", 5,
			"Tweezers", 2,
			"Disinfectant", 10,
			"Disinfectant", 5,
			"Gloves_Surgical", 5,
			"Gloves_Surgical", 2,
			"Hat_SurgicalMask_Blue", 5,
			"Hat_SurgicalMask_Blue", 2,
			"Glasses_SafetyGoggles", 5,
			"Glasses_SafetyGoggles", 2,
		},
		junk = {
			rolls = 1,
			items = {
				"Pen", 6,
				"Pencil", 6,
				"BluePen", 4,
				"RedPen", 4,
				"SheetPaper2", 4,
				"Notebook", 4,
			}
		}
	},
	counter = {
		rolls = 3, 
		items = {
			"HTFAC.HTFACMicroscope", 2,
			"HTFAC.HTFACBeakerEmpty", 10,
			"HTFAC.HTFACBeakerEmpty", 5,
			"HTFAC.HTFACBeakerEmpty", 1,
			"HTFAC.HTFACTestTubeEmpty", 8,
			"HTFAC.HTFACTestTubeEmpty", 2,
			"HTFAC.HTFACPackTestTubes", 1,
			"HTFAC.HTFACPackCottonSwabs", 0.5,
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 5,
			"HTFAC.HTFACChemicals", 2,
			"HTFAC.HTFACChemicals", 1,
			"HTFAC.HTFACReportAutopsy", 10,
			"HTFAC.HTFACReportAutopsy", 5,
			"HTFAC.HTFACReportAutopsy", 2,
			"HTFAC.HTFACReportAutopsy", 1,
			--BASE ITEMS:
			"FirstAidKit", 1,
			"Scalpel", 50,
			"Tweezers", 5,
			"Tweezers", 2,
			"Disinfectant", 10,
			"Disinfectant", 5,
			"Gloves_Surgical", 5,
			"Gloves_Surgical", 2,
			"Hat_SurgicalMask_Blue", 5,
			"Hat_SurgicalMask_Blue", 2,
			"Glasses_SafetyGoggles", 5,
			"Glasses_SafetyGoggles", 2,
		},
		junk = {
			rolls = 1,
			items = {
				"Pen", 6,
				"Pencil", 6,
				"BluePen", 4,
				"RedPen", 4,
				"SheetPaper2", 4,
				"Notebook", 4,
			}
		}
	},
	filingcabinet = {
		rolls = 4, 
		items = {
			"HTFAC.HTFACReportAutopsy", 50,
			"HTFAC.HTFACReportAutopsy", 20,
			"HTFAC.HTFACReportAutopsy", 10,
			"HTFAC.HTFACReportAutopsy", 10,
			"HTFAC.HTFACReportAutopsy", 5,
			"HTFAC.HTFACReportAutopsy", 5,
			"HTFAC.HTFACReportAutopsy", 5,
		}
	},
	freezer = {
		rolls = 2, 
		items = {
			"HTFAC.HTFACTestTubeBlood", 10,
			"HTFAC.HTFACTestTubeBlood", 10,
			"HTFAC.HTFACTestTubeBlood", 5,
			"HTFAC.HTFACTestTubeBlood", 5,
		}
	},
	fridge = {
		rolls = 2, 
		items = {
			"HTFAC.HTFACTestTubeBlood", 10,
			"HTFAC.HTFACTestTubeBlood", 10,
			"HTFAC.HTFACTestTubeBlood", 5,
			"HTFAC.HTFACTestTubeBlood", 5,
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 5,
			"HTFAC.HTFACChemicals", 5,
		}
	},
	metal_shelves = {
		rolls = 4, 
		items = {
			"HTFAC.HTFACMicroscope", 2,
			"HTFAC.HTFACLabBalance", 2,
			"HTFAC.HTFACBeakerEmpty", 10,
			"HTFAC.HTFACBeakerEmpty", 5,
			"HTFAC.HTFACBeakerEmpty", 2,
			"HTFAC.HTFACPackTestTubes", 5,
			"HTFAC.HTFACPackTestTubes", 2,
			"HTFAC.HTFACPackTestTubes", 1,
			"HTFAC.HTFACPackCottonSwabs", 5,
			"HTFAC.HTFACChemicals", 20,
			"HTFAC.HTFACChemicals", 10,
			"HTFAC.HTFACChemicals", 5,
			"HTFAC.HTFACChemicals", 2,
			"HTFAC.HTFACChemicals", 1,
			--BASE ITEMS:
			"FirstAidKit", 1,
			"Disinfectant", 10,
			"Disinfectant", 5,
			"Disinfectant", 2,
			"Gloves_Surgical", 8,
			"Hat_SurgicalMask_Blue", 8,
			"JacketLong_Doctor", 1,
			"Shirt_Scrubs", 8,
			"Shirt_Scrubs", 5,
			"Trousers_Scrubs", 8,
			"Trousers_Scrubs", 5,
			"Glasses_SafetyGoggles", 8,
			"Glasses_SafetyGoggles", 5,
		}
	},
}