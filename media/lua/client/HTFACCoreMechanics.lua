--[---------------------------------- STARTING VARIABLES ---------------------------------]--

local ZombRand = ZombRand --Used to randomly generate numbers.
--How to use:
--ZombRand(1,3) will pick a number between 1 and 2.
--ZombRand(0,4) will pick a number between 0, and 3.

--[---------------------------------- DURABILITY / XP ----------------------------------]--

--Add XP for completing a task.
local function HTFACAddXP(player,amountXP)
	player:getXp():AddXP(Perks.Doctor, amountXP)
end

--Reduce durability of item such as pen/pencil. CURRENTLY NOT USED.
local function HTFACReduceDurability(items, player)
	local tool = items:get(i)
	tool:setCondition(tool:getCondition() - 0.1)
end

--[---------------------------------- RESEARCH ANALYSIS ----------------------------------]--

--Chance of a breakthrough when performing research analyses.
local function HTFACBreakthroughChance(player)
	local breakthrough = ZombRand(0,101)
	local playerFirstAidSkill = player:getPerkLevel(Perks.Doctor)
	local learnedWeakDiscovery = false
	local learnedStrongDiscovery = false
	local learnedCureDiscovery = false
	
	--Determine if the player has learned any discovery recipes.
	local knownRecipes = player:getKnownRecipes()
	if knownRecipes:contains("Discover Weak Serum Formula") then learnedWeakDiscovery = true end
	if knownRecipes:contains("Discover Strong Serum Formula") then learnedStrongDiscovery = true end
	if knownRecipes:contains("Discover The Cure") then learnedCureDiscovery = true end
	
	--Determine if the player has a breakthrough.
	if breakthrough <= 0 * playerFirstAidSkill then
		HTFACAddXP(player, 50)
		if playerFirstAidSkill >=3 and not learnedWeakDiscovery then
			player:getInventory():AddItem("HTFAC.HTFACReportBreakthroughWeak")
		elseif playerFirstAidSkill >=5 and not learnedStrongDiscovery then
			player:getInventory():AddItem("HTFAC.HTFACReportBreakthroughStrong")
		elseif playerFirstAidSkill >=7 and not learnedCureDiscovery then
			player:getInventory():AddItem("HTFAC.HTFACReportBreakthroughCure")
		else
			player:getInventory():AddItem("HTFAC.HTFACReportBreakthrough")
		end
	end
end

--Research Analyses OnCreate functions.
function HTFACAnalysisMicroscopic(items, result, player)
	player:getInventory():AddItem("HTFAC.HTFACReportMicroscopic")
	HTFACBreakthroughChance(player)
	HTFACAddXP(player, 2)
end

function HTFACAnalysisChemical(items, result, player)
	player:getInventory():AddItem("HTFAC.HTFACReportChemical")
	HTFACBreakthroughChance(player)
	HTFACAddXP(player, 2)
end

function HTFACAnalysisBlood(items, result, player)
	player:getInventory():AddItem("HTFAC.HTFACReportBlood")
	HTFACBreakthroughChance(player)
	HTFACAddXP(player, 2)
end

function HTFACAnalysisAutopsy(items, result, player)
	player:getInventory():AddItem("HTFAC.HTFACReportAutopsy")
	HTFACBreakthroughChance(player)
	HTFACAddXP(player, 20)
end

--[---------------------------------- RAPID TEST MECHANICS ----------------------------------]--

--Returns infection progress.
local function getInfectionProgress(player)
    local bodyDamage = player:getBodyDamage()
    return (player:getHoursSurvived() - bodyDamage:getInfectionTime()) / bodyDamage:getInfectionMortalityDuration()
end

--Test for Zombie Infection.
function HTFACTestForInfection(items, result, player)
	local infectionProgress = getInfectionProgress(player)
	
	--DEBUG COMMAND:
	--print("My infection progress: " .. math.ceil(infectionProgress * 100.0 - 1) .."%")
	--player:Say("My infection progress: " .. math.ceil(infectionProgress * 100.0 - 1) .."%")
	
	--Check infection progress.
	if infectionProgress <= 0 then
		--Add negative test result to player inventory.
		player:getInventory():AddItem("HTFAC.HTFACTestResultNegative")
		--State you are not infected.
		player:Say("You are not infected!")
	else
		--Add positive test result to player inventory.
		player:getInventory():AddItem("HTFAC.HTFACTestResultPositive")
		--State degree of infection.
		if infectionProgress <= 0.25 then
			player:Say("The virus is present in my blood stream.")
		elseif infectionProgress <= 0.6 then
			player:Say("The virus is in the beginning stage of mutation.")
		elseif infectionProgress <= 0.8 then
			player:Say("The virus is in the middle stage of mutation.")	
		else
			player:Say("The virus is in the final stage of mutation.")
		end
	end
end

--[---------------------------------- SERUM MECHANICS ----------------------------------]--

--Determines the outcome of the injection.
local function HTFACApplySerum(minLevel, maxLevel, effectiveness, player)
	local bodyDamage = player:getBodyDamage()
	
	--Check if the player is infected (and do nothing if infection is above serum's maxLevel).
	if bodyDamage:isInfected() then
		local infectionProgress = getInfectionProgress(player)
		
		--Check if the serum is The Cure.
		if minLevel == 0 then
			bodyDamage:setInfected(false)
			bodyDamage:setInfectionMortalityDuration(-1)
			bodyDamage:setInfectionTime(-1)
			bodyDamage:setInfectionLevel(0)
			local bodyParts = bodyDamage:getBodyParts()
			for i=bodyParts:size()-1, 0, -1  do
				local bodyPart = bodyParts:get(i)
				bodyPart:SetInfected(false)
			end
			
		--Reduce the infection if infection is within the serum's range.
		elseif infectionProgress > minLevel and infectionProgress < maxLevel then
			if infectionProgress - effectiveness <  minLevel then
				--if serum's effectiveness would reduce infection below minLevel, reduce infection to min level instead.
				bodyDamage:setInfectionTime(player:getHoursSurvived() - minLevel * bodyDamage:getInfectionMortalityDuration())
			else
				--Reduce infection progress by serum effectiveness.
				bodyDamage:setInfectionTime(player:getHoursSurvived() - (infectionProgress - effectiveness) * bodyDamage:getInfectionMortalityDuration())
			end
		end
		
	-- Infect the player if they are not infected.
	else
		bodyDamage:setInfected(true)
		bodyDamage:setInfectionMortalityDuration(bodyDamage:pickMortalityDuration())
		bodyDamage:setInfectionTime(player:getHoursSurvived() - 0.01 * bodyDamage:getInfectionMortalityDuration())
	end
end

--Inject yourself with a serum.
function HTFACInjectYourself(items, result, player)
	--Set serum ranges and effectiveness.
	local weakMinLevel = 0.251
	local weakMaxLevel = 0.7
	local weakEffectiveness = 0.25

	local strongMinLevel = 0.01
	local strongMaxLevel = 0.85
	local strongEffectiveness = 0.5
	
	local cureMinLevel = 0
	local cureMaxLevel = 0.95
	local cureEffectiveness = 1

	--Determine which serum is being injected and apply the effect.
	for i=items:size()-1, 0, -1  do
		if string.find(items:get(i):getType(),"Weak") then
			HTFACApplySerum(weakMinLevel, weakMaxLevel, weakEffectiveness, player)
			return
		end
		if string.find(items:get(i):getType(),"Strong") then
			HTFACApplySerum(strongMinLevel, strongMaxLevel, strongEffectiveness, player)
			return
		end
		if string.find(items:get(i):getType(),"Cure") then
			HTFACApplySerum(cureMinLevel, cureMaxLevel, cureEffectiveness, player)
			return
		end
	end
end