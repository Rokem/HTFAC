require "TimedActions/ISBaseTimedAction"

ActionTakeBloodSample = ISBaseTimedAction:derive("ActionTakeBloodSample")

ActionTakeBloodSample.setLooted = function(body)
    body:getModData()["HTFAC_Looted"] = true
end

ActionTakeBloodSample.isLooted = function(body)
    local lootedModData = body:getModData()["HTFAC_Looted"]
    return lootedModData
end

function ActionTakeBloodSample:isValid()
	-- Ensure corpse is not moving.
    if self.corpseBody:getStaticMovingObjectIndex() < 0 then
        return false
    end
	-- check equipped items are inventory items.
    local primaryItem = self.character:getPrimaryHandItem()
    local secondaryItem = self.character:getSecondaryHandItem()
    if not (instanceof(primaryItem, "InventoryItem") and instanceof(secondaryItem, "InventoryItem")) then
        return false
    end
    -- check secondaryItem is test tube.
    if not secondaryItem:getFullType() == "HTFAC.HTFACTestTubeEmpty" then
        return false
    end
	-- check primary item is blade.
	if primaryItem:getFullType() == "Base.Scalpel" then
        return true
    end
	-- else return false.
    return false
end

function ActionTakeBloodSample:waitToStart()
    self.character:faceThisObject(self.corpseBody)
    return self.character:shouldBeTurning()
end

function ActionTakeBloodSample:update()
    self.corpse:setJobDelta(self:getJobDelta())
    self.character:faceThisObject(self.corpseBody)

    self.character:setMetabolicTarget(Metabolics.MediumWork)
end

function ActionTakeBloodSample:start()
    self.corpse:setJobType(getText("ContextMenu_Take_Blood_Sample"))
    self.corpse:setJobDelta(0.0)
    self:setActionAnim("Loot")
    self.character:SetVariable("LootPosition", "Low")
end

function ActionTakeBloodSample:stop()
    ISBaseTimedAction.stop(self)
    self.corpse:setJobDelta(0.0)
end

function ActionTakeBloodSample:perform()
    forceDropHeavyItems(self.character)
    self.corpse:setJobDelta(0.0)
	self.character:getInventory():setDrawDirty(true)
	-- Add blood sample to player inventory.
    self.character:getInventory():AddItem("HTFAC.HTFACTestTubeBlood")
	-- Delete the empty test tube in the player's hand (since it was replaced by a blood sample).
    self.character:getInventory():Remove(self.character:getSecondaryHandItem())
    self.character:setSecondaryHandItem(nil)
	-- Add 1 XP for taking a sample.
    self.character:getXp():AddXP(Perks.Doctor, 1)
	-- Set corpse to looted.
    ActionTakeBloodSample.setLooted(body)

    local pdata = getPlayerData(self.character:getPlayerNum())
    if pdata ~= nil then
        pdata.playerInventory:refreshBackpacks()
        pdata.lootInventory:refreshBackpacks()
    end
	
    -- Needed to remove from queue / start next.
    ISBaseTimedAction.perform(self)
end

function ActionTakeBloodSample:new(character, corpse, time)
    local o = {}
    setmetatable(o, self)
    self.__index = self
    o.character = character
    o.corpse = corpse:getItem()
    o.corpseBody = corpse
    o.stopOnWalk = true
    o.stopOnRun = true
    o.maxTime = time
    o.forceProgressBar = true
    if character:isTimedActionInstant() then
        o.maxTime = 1
    end
    return o
end