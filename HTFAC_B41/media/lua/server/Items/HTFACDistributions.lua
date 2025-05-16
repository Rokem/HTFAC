require "Items/Distributions"

Distributions = Distributions or {};

--[[
HTFAC DISTRIBUTION TABLES:
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFAC", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
--]]

local HTFACDistributionTable = {

--[------------------- OFFICE -------------------]--

	office = {
		crate = {
			procedural = true,
			procList = {
				{name="CrateOfficeSupplies", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="CrateOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		counter = {
			procedural = true,
			procList = {
				{name="OfficeCounter", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeCounter", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeCounter", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeCounter", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeCounter", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="OfficeCounter", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeCounter", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeCounter", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeCounter", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		desk = {
			procedural = true,
			procList = {
				{name="OfficeDesk", min=0, max=99, weightChance=100},
				{name="PoliceDesk", min=0, max=99, forceForRooms="policestorage"},
				-- HTFAC Stuff
				{name="HTFACMedOfficeDesk", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeDesk", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeDesk", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeDesk", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="OfficeDesk", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeDesk", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeDesk", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeDesk", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		filingcabinet = {
            procedural = true,
            procList = {
                {name="FilingCabinetGeneric", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="FilingCabinetGeneric", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
            }
        },
		freezer = {
			procedural = true,
            procList = {
				
			}
		},
		fridge = {
			procedural = true,
			procList = {
				{name="OfficeFridge", min=0, max=99},
			}
		},
		metal_shelves = {
			procedural= true,
			procList = {
				{name="OfficeShelfSupplies", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="OfficeShelfSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		shelves = {
			procedural= true,
			procList = {
				{name="OfficeShelfSupplies", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="OfficeShelfSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
	},

	officestorage = {
		isShop = true,
		crate = {
			procedural = true,
			procList = {
				{name="CrateOfficeSupplies", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="CrateOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		metal_shelves = {
			procedural= true,
			procList = {
				{name="OfficeShelfSupplies", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="OfficeShelfSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		shelves = {
			procedural= true,
			procList = {
				{name="OfficeShelfShelves", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZonePharmacy"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="OfficeShelfSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganPublic"},
				{name="HTFACLabOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACExecOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneFinneganExec"},
				{name="HTFACMilOfficeSupplies", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
	},
	
--[------------------- MEDICAL -------------------]--
	
	medical = {
		isShop = true,
		counter = {
			procedural = true,
			procList = {
				{name="MedicalClinicDrugs", min=1, max=99, weightChance=100},
				{name="MedicalClinicTools", min=1, max=99, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedicalHospitalTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACMedicalHospitalTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACMedicalHospitalTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		metal_shelves = {
			procedural = true,
			procList = {
				{name="MedicalStorageDrugs", min=1, max=99, weightChance=100},
				{name="MedicalStorageTools", min=1, max=99, weightChance=100},
				{name="MedicalStorageOutfit", min=0, max=99, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		shelves = {
			procedural= true,
			procList = {
				{name="MedicalStorageDrugs", min=1, max=99, weightChance=100},
				{name="MedicalStorageTools", min=1, max=99, weightChance=100},
				{name="MedicalStorageOutfit", min=0, max=99, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		wardrobe = {
			procedural = true,
			procList = {
				{name="MedicalStorageOutfit", min=0, max=99, weightChance=100},
			}
		},
	},
	
	dentiststorage = {
		isShop = true,
		metal_shelves = {
			procedural = true,
			procList = {
				{name="MedicalStorageDrugs", min=0, max=6, weightChance=100},
				{name="MedicalStorageTools", min=0, max=4, weightChance=80},
				{name="MedicalStorageOutfit", min=0, max=2, weightChance=40},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
	},
	
	medicalstorage = {
		isShop = true,
		counter = {
			procedural = true,
			procList = {
				{name="MedicalClinicDrugs", min=1, max=4, weightChance=100},
				{name="MedicalClinicTools", min=1, max=2, weightChance=100},
				{name="MedicalClinicOutfit", min=1, max=2, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		metal_shelves = {
			procedural = true,
			procList = {
				{name="MedicalStorageDrugs", min=1, max=6, weightChance=100},
				{name="MedicalStorageTools", min=1, max=4, weightChance=100},
				{name="MedicalStorageOutfit", min=1, max=2, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		freezer = {
			procedural = true,
			procList = {
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		fridge = {
			procedural = true,
			procList = {
				{name="FridgeWater", min=0, max=12},
				-- HTFAC Stuff
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		shelves = {
			procedural= true,
			procList = {
				{name="MedicalStorageDrugs", min=1, max=6, weightChance=100},
				{name="MedicalStorageTools", min=1, max=4, weightChance=100},
				{name="MedicalStorageOutfit", min=1, max=2, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
	},
	
	hospitalstorage = {
		isShop = true,
		metal_shelves = {
			procedural = true,
			procList = {
				{name="MedicalStorageDrugs", min=0, max=6, weightChance=100},
				{name="MedicalStorageTools", min=0, max=4, weightChance=80},
				{name="MedicalStorageOutfit", min=0, max=2, weightChance=40},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		shelves = {
			procedural= true,
			procList = {
				{name="MedicalStorageDrugs", min=0, max=6, weightChance=100},
				{name="MedicalStorageTools", min=0, max=4, weightChance=80},
				{name="MedicalStorageOutfit", min=0, max=2, weightChance=40},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
	},

--[------------------- PHARMACY -------------------]--

	pharmacystorage = {
		isShop = true,
		counter = {
			procedural = true,
			procList = {
				{name="MedicalClinicDrugs", min=1, max=4, weightChance=100},
				{name="MedicalClinicTools", min=1, max=2, weightChance=100},
				{name="MedicalClinicOutfit", min=1, max=2, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalClinicDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalClinicOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACMedicalClinicTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		freezer = {
			procedural = true,
			procList = {
				-- HTFAC Stuff
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneSecretBase"},

			}
		},
		fridge = {
			procedural = true,
			procList = {
				{name="FridgeWater", min=0, max=12},
				-- HTFAC Stuff
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACMedicalFridge", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneFinneganSecure"},
				{name="HTFACLabFridge", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		metal_shelves = {
			procedural = true,
			procList = {
				{name="MedicalStorageDrugs", min=1, max=6, weightChance=100},
				{name="MedicalStorageTools", min=1, max=4, weightChance=100},
				{name="MedicalStorageOutfit", min=1, max=2, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		shelves = {
			procedural = true,
			procList = {
				{name="MedicalStorageDrugs", min=1, max=6, weightChance=100},
				{name="MedicalStorageTools", min=1, max=4, weightChance=100},
				{name="MedicalStorageOutfit", min=1, max=2, weightChance=100},
				-- HTFAC Clinic
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneClinic"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneClinic"},
				-- HTFAC Hospital
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospital"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospital"},
				-- HTFAC Hospital Secure
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneHospitalSecure"},
				-- HTFAC Secret Base
				{name="MedicalStorageDrugs", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="MedicalStorageOutfit", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
				{name="HTFACHospitalStorageTools", min=0, max=99, forceForZones="HTFACZoneSecretBase"},
			}
		},
		filingcabinet = {
            procedural = true,
            procList = {
                {name="FilingCabinetGeneric", min=0, max=99},
				-- HTFAC Stuff
				{name="HTFACMedOfficeFilingCabinet", min=0, max=99, forceForZones="HTFACZonePharmacy"},
            }
        },
	},
	
	
}

--Game should merge tables by itself now.
table.insert(Distributions, HTFACDistributionTable)

--[[
//RoomDef
	//ObjectDef

office
	crate
	counter
	desk
	filingcabinet
	freezer
	fridge
	metal_shelves
	shelves
	
officestorage
	crate
	metal_shelves
	shelves
	
laboratory
	bin
	desk
	counter
	filingcabinet
	freezer
	fridge
	metal_shelves
	shelves
	
medical
	counter
	metal_shelves
	shelves
	wardrobe

medclinic
	desk
	metal_shelves
	shelves

pharmacystorage
	filingcabinet
	freezer
	fridge
	metal_shelves
	shelves
	
dentiststorage
	metal_shelves
	
medicalstorage
	counter
	metal_shelves
	freezer
	fridge
	shelves

hospitalstorage
	metal_shelves
	shelves
	
kennels
	counter
	metal_shelves
	
security
	crate
	filingcabinet
	
Modifiers:
	forceForTiles=force spawns for specific tile types.
	forceForRooms=force for specific roomdefs.
	forceForZones=force for specific defined zones (unsure what defines a zone yet).
--]]

--[[
--EXISTING ROOMDEFS:
pharmacy
pharmacystorage
medical
medclinic
office
dentiststorage
medicalstorage
hospitalstorage
hospitalroom
laboratory
changeroom
nursery
morgue

FINNEGAN
office
security
laboratory
kennels
lockerroom
pharmacy
pharmacystorage

SecretBase
Zone = SecretBase
--]]