require "Items/ProceduralDistributions"

local function HTFACDistributionMerge()

--[[
	MedOffice -- Offices found in clinics, hospitals, pharmacies, etc.
	LabOffice -- Offices found in research labs, such as Finnegan Research Group or Military Base.
	ExecOffice -- Offices found on 5th floor of Finnegan Research group.
	MilOffice -- Offices found at the Secret Military Base.
--]]

--[-------------------MED OFFICE -------------------]--

	ProceduralDistributions.list.HTFACMedOfficeCounter = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Book", 10,
            "Eraser", 6,
            "HolePuncher", 4,
            "Magazine", 10,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 0.1,
            "Pen", 8,
            "Pencil", 20,
            "RedPen", 8,
            "RubberBand", 6,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Glue", 2,
                "Radio.RadioBlack", 1,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
			}
		}
	}
	
	ProceduralDistributions.list.HTFACMedOfficeDesk = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "HolePuncher", 4,
            "Magazine", 4,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Newspaper", 4,
            "Notebook", 2,
            "Paperclip", 4,
            "Pen", 8,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 1,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Briefcase", 0.5,
                "CardDeck", 1,
                "Cigarettes", 8,
                "Cologne", 1,
                "Comb", 2,
                "Disc_Retail", 2,
                "Eraser", 6,
                "Glue", 2,
                "LetterOpener", 1,
                "Lighter", 4,
                "Lipstick", 1,
                "MakeupEyeshadow", 1,
                "MakeupFoundation", 1,
                "Matches", 8,
                "PaperclipBox", 1,
                "Perfume", 1,
                "PillsVitamins", 1,
                "Radio.CDplayer", 1,
                "Radio.RadioBlack", 2,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
                "Toothbrush", 1,
                "WhiskeyFull", 0.1,
			}
		}
	}
	
	ProceduralDistributions.list.HTFACMedOfficeSupplies = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Glue", 2,
            "HolePuncher", 4,
            "Notebook", 10,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 1,
            "Pen", 8,
            "Pen", 8,
            "Pencil", 10,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 6,
            "Scissors", 2,
            "Scotchtape", 2,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "Staples", 4,
            "Stapler", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	}

	ProceduralDistributions.list.HTFACMedOfficeFilingCabinet = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"Magazine", 4,
            "Notebook", 2,
            "SheetPaper2", 20,
		},
		junk = {
			rolls = 1,
			items = {
				"PaperclipBox", 1,
                "Scotchtape", 2,
                "SheetPaper2", 20,
			}
		}
	}


--[------------------- LAB OFFICE -------------------]--

	ProceduralDistributions.list.HTFACLabOfficeCounter = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Book", 10,
            "Eraser", 6,
            "HolePuncher", 4,
            "Magazine", 10,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 0.1,
            "Pen", 8,
            "Pencil", 20,
            "RedPen", 8,
            "RubberBand", 6,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Glue", 2,
                "Radio.RadioBlack", 1,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
			}
		}
	}
	
	ProceduralDistributions.list.HTFACLabOfficeDesk = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "HolePuncher", 4,
            "Magazine", 4,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Newspaper", 4,
            "Notebook", 2,
            "Paperclip", 4,
            "Pen", 8,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 1,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Briefcase", 0.5,
                "CardDeck", 1,
                "Cigarettes", 8,
                "Cologne", 1,
                "Comb", 2,
                "Disc_Retail", 2,
                "Eraser", 6,
                "Glue", 2,
                "LetterOpener", 1,
                "Lighter", 4,
                "Lipstick", 1,
                "MakeupEyeshadow", 1,
                "MakeupFoundation", 1,
                "Matches", 8,
                "PaperclipBox", 1,
                "Perfume", 1,
                "PillsVitamins", 1,
                "Radio.CDplayer", 1,
                "Radio.RadioBlack", 2,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
                "Toothbrush", 1,
                "WhiskeyFull", 0.1,
			}
		}
	}

	ProceduralDistributions.list.HTFACLabOfficeSupplies = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Glue", 2,
            "HolePuncher", 4,
            "Notebook", 10,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 1,
            "Pen", 8,
            "Pen", 8,
            "Pencil", 10,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 6,
            "Scissors", 2,
            "Scotchtape", 2,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "Staples", 4,
            "Stapler", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	}

	ProceduralDistributions.list.HTFACLabOfficeFilingCabinet = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"Magazine", 4,
            "Notebook", 2,
            "SheetPaper2", 20,
		},
		junk = {
			rolls = 1,
			items = {
				"PaperclipBox", 1,
                "Scotchtape", 2,
                "SheetPaper2", 20,
			}
		}
	}


--[------------------- EXEC OFFICE -------------------]--

	ProceduralDistributions.list.HTFACExecOfficeCounter = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Book", 10,
            "Eraser", 6,
            "HolePuncher", 4,
            "Magazine", 10,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 0.1,
            "Pen", 8,
            "Pencil", 20,
            "RedPen", 8,
            "RubberBand", 6,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Glue", 2,
                "Radio.RadioBlack", 1,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
			}
		}
	}
	
	ProceduralDistributions.list.HTFACExecOfficeDesk = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "HolePuncher", 4,
            "Magazine", 4,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Newspaper", 4,
            "Notebook", 2,
            "Paperclip", 4,
            "Pen", 8,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 1,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Briefcase", 0.5,
                "CardDeck", 1,
                "Cigarettes", 8,
                "Cologne", 1,
                "Comb", 2,
                "Disc_Retail", 2,
                "Eraser", 6,
                "Glue", 2,
                "LetterOpener", 1,
                "Lighter", 4,
                "Lipstick", 1,
                "MakeupEyeshadow", 1,
                "MakeupFoundation", 1,
                "Matches", 8,
                "PaperclipBox", 1,
                "Perfume", 1,
                "PillsVitamins", 1,
                "Radio.CDplayer", 1,
                "Radio.RadioBlack", 2,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
                "Toothbrush", 1,
                "WhiskeyFull", 0.1,
			}
		}
	}

	ProceduralDistributions.list.HTFACExecSupplies = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Glue", 2,
            "HolePuncher", 4,
            "Notebook", 10,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 1,
            "Pen", 8,
            "Pen", 8,
            "Pencil", 10,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 6,
            "Scissors", 2,
            "Scotchtape", 2,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "Staples", 4,
            "Stapler", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	}

	ProceduralDistributions.list.HTFACExecOfficeFilingCabinet = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"Magazine", 4,
            "Notebook", 2,
            "SheetPaper2", 20,
		},
		junk = {
			rolls = 1,
			items = {
				"PaperclipBox", 1,
                "Scotchtape", 2,
                "SheetPaper2", 20,
			}
		}
	}

--[------------------- MIL OFFICE -------------------]--

	ProceduralDistributions.list.HTFACMilOfficeCounter = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Book", 10,
            "Eraser", 6,
            "HolePuncher", 4,
            "Magazine", 10,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 0.1,
            "Pen", 8,
            "Pencil", 20,
            "RedPen", 8,
            "RubberBand", 6,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Glue", 2,
                "Radio.RadioBlack", 1,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
			}
		}
	}
	
	ProceduralDistributions.list.HTFACMilOfficeDesk = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "HolePuncher", 4,
            "Magazine", 4,
            "MagazineCrossword1", 2,
            "MagazineCrossword2", 2,
            "MagazineCrossword3", 2,
            "MagazineWordsearch1", 2,
            "MagazineWordsearch2", 2,
            "MagazineWordsearch3", 2,
            "Newspaper", 4,
            "Notebook", 2,
            "Paperclip", 4,
            "Pen", 8,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 1,
            "SheetPaper2", 20,
            "Stapler", 4,
            "Staples", 4,
		},
		junk = {
			rolls = 1,
			items = {
				"Briefcase", 0.5,
                "CardDeck", 1,
                "Cigarettes", 8,
                "Cologne", 1,
                "Comb", 2,
                "Disc_Retail", 2,
                "Eraser", 6,
                "Glue", 2,
                "LetterOpener", 1,
                "Lighter", 4,
                "Lipstick", 1,
                "MakeupEyeshadow", 1,
                "MakeupFoundation", 1,
                "Matches", 8,
                "PaperclipBox", 1,
                "Perfume", 1,
                "PillsVitamins", 1,
                "Radio.CDplayer", 1,
                "Radio.RadioBlack", 2,
                "Radio.RadioRed", 1,
                "Scissors", 2,
                "Scotchtape", 2,
                "Toothbrush", 1,
                "WhiskeyFull", 0.1,
			}
		}
	}

	ProceduralDistributions.list.HTFACMilOfficeSupplies = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"BluePen", 8,
            "Glue", 2,
            "HolePuncher", 4,
            "Notebook", 10,
            "Notebook", 10,
            "Paperclip", 20,
            "PaperclipBox", 1,
            "Pen", 8,
            "Pen", 8,
            "Pencil", 10,
            "Pencil", 10,
            "RedPen", 8,
            "RubberBand", 6,
            "Scissors", 2,
            "Scotchtape", 2,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "SheetPaper2", 20,
            "Staples", 4,
            "Stapler", 4,
		},
		junk = {
			rolls = 1,
			items = {
				
			}
		}
	}
	
	ProceduralDistributions.list.HTFACMilOfficeFilingCabinet = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"Magazine", 4,
            "Notebook", 2,
            "SheetPaper2", 20,
		},
		junk = {
			rolls = 1,
			items = {
				"PaperclipBox", 1,
                "Scotchtape", 2,
                "SheetPaper2", 20,
			}
		}
	}


--[------------------- MEDICAL TOOLS -------------------]--

	ProceduralDistributions.list.HTFACMedicalClinicTools = {
		rolls = 4,
        items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
            "AlcoholWipes", 10,
            "Antibiotics", 4,
            "Bandaid", 10,
            "Bandage", 10,
            "CottonBalls", 10,
            "Disinfectant", 8,
            "Gloves_Surgical", 10,
            "Hat_SurgicalMask_Blue", 10,
            "Pills", 20,
            "Pills", 10,
            "Scalpel", 20,
            "Scalpel", 10,
            "Scissors", 20,
            "Scissors", 10,
            "SutureNeedle", 20,
            "SutureNeedle", 10,
            "SutureNeedleHolder", 20,
            "SutureNeedleHolder", 10,
            "Tweezers", 20,
            "Tweezers", 10,
        },
        junk = {
            rolls = 1,
            items = {
            
            }
        }
	}

	ProceduralDistributions.list.HTFACMedicalHospitalTools = {
		rolls = 4,
        items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
            "AlcoholWipes", 10,
            "Antibiotics", 4,
            "Bandaid", 10,
            "Bandage", 10,
            "CottonBalls", 10,
            "Disinfectant", 8,
            "Gloves_Surgical", 10,
            "Hat_SurgicalMask_Blue", 10,
            "Pills", 20,
            "Pills", 10,
            "Scalpel", 20,
            "Scalpel", 10,
            "Scissors", 20,
            "Scissors", 10,
            "SutureNeedle", 20,
            "SutureNeedle", 10,
            "SutureNeedleHolder", 20,
            "SutureNeedleHolder", 10,
            "Tweezers", 20,
            "Tweezers", 10,
        },
        junk = {
            rolls = 1,
            items = {
            
            }
        }
	}


--[------------------- MEDICAL STORAGE -------------------]--	

	ProceduralDistributions.list.HTFACMedicalStorageTools = {
		rolls = 4,
        items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
            "AlcoholWipes", 10,
            "Antibiotics", 4,
            "Bandage", 10,
            "CottonBalls", 10,
            "Disinfectant", 8,
            "Gloves_Surgical", 10,
            "Hat_SurgicalMask_Blue", 10,
            "Scalpel", 20,
            "Scalpel", 20,
            "Scalpel", 10,
            "Scalpel", 10,
            "Scissors", 20,
            "Scissors", 10,
            "SutureNeedle", 20,
            "SutureNeedle", 20,
            "SutureNeedle", 10,
            "SutureNeedle", 10,
            "SutureNeedleHolder", 20,
            "SutureNeedleHolder", 20,
            "SutureNeedleHolder", 10,
            "SutureNeedleHolder", 10,
            "Tweezers", 20,
            "Tweezers", 10,
        },
        junk = {
            rolls = 1,
            items = {
            
            }
        }
	}

	ProceduralDistributions.list.HTFACHospitalStorageTools = {
		rolls = 4,
        items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
            "AlcoholWipes", 10,
            "Antibiotics", 4,
            "Bandage", 10,
            "CottonBalls", 10,
            "Disinfectant", 8,
            "Gloves_Surgical", 10,
            "Hat_SurgicalMask_Blue", 10,
            "Scalpel", 20,
            "Scalpel", 20,
            "Scalpel", 10,
            "Scalpel", 10,
            "Scissors", 20,
            "Scissors", 10,
            "SutureNeedle", 20,
            "SutureNeedle", 20,
            "SutureNeedle", 10,
            "SutureNeedle", 10,
            "SutureNeedleHolder", 20,
            "SutureNeedleHolder", 20,
            "SutureNeedleHolder", 10,
            "SutureNeedleHolder", 10,
            "Tweezers", 20,
            "Tweezers", 10,
        },
        junk = {
            rolls = 1,
            items = {
            
            }
        }
	}


--[------------------- MEDICAL/LAB FRIDGE -------------------]--	

	ProceduralDistributions.list.HTFACMedicalFridge = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
			"Antibiotics", 4,
            "Antibiotics", 4,
            "Antibiotics", 4,
            "Antibiotics", 4,
            "Disinfectant", 8,
            "Disinfectant", 8,
            "Disinfectant", 8,
            "Disinfectant", 8,
            "Pills", 50,
            "Pills", 20,
            "Pills", 20,
            "Pills", 10,
            "Pills", 10,
            "PillsAntiDep", 20,
            "PillsAntiDep", 10,
            "PillsBeta", 20,
            "PillsBeta", 10,
            "PillsSleepingTablets", 20,
            "PillsSleepingTablets", 10,
		},
		junk = {
			rolls = 1,
			items = {
			
			}
		}
	}

	ProceduralDistributions.list.HTFACLabFridge = {
		rolls = 4,
		items = {
			-- HTFAC ITEMS
			
			
			-- BASE ITEMS
            "Antibiotics", 4,
            "Antibiotics", 4,
            "Antibiotics", 4,
            "Antibiotics", 4,
            "Disinfectant", 8,
            "Disinfectant", 8,
            "Disinfectant", 8,
            "Disinfectant", 8,
            "Pills", 50,
            "Pills", 20,
            "Pills", 20,
            "Pills", 10,
            "Pills", 10,
            "PillsAntiDep", 20,
            "PillsAntiDep", 10,
            "PillsBeta", 20,
            "PillsBeta", 10,
            "PillsSleepingTablets", 20,
            "PillsSleepingTablets", 10,
		},
		junk = {
			rolls = 1,
			items = {
			
			}
		}
	}


--[------------------- LORE SPAWNS -------------------]--
-- NOT YET IMPLEMENTED

end

--Add loot table additions to the end of Distributions, so the game will take care of merging it.
Events.OnPreDistributionMerge.Add(HTFACDistributionMerge)