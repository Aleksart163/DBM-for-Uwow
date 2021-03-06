local mod	= DBM:NewMod(1987, "DBM-AntorusBurningThrone", nil, 946)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 17650 $"):sub(12, -3))
mod:SetCreatureID(122477, 122135)--122477 F'harg, 122135 Shatug
mod:SetEncounterID(2074)
mod:SetZone()
mod:SetBossHPInfoToHighest()
mod:SetUsedIcons(5, 4, 3, 2, 1)
mod:SetHotfixNoticeRev(16949)
mod.respawnTime = 29--Guessed, it's not 4 anymore

mod:RegisterCombat("combat")
--mod:RegisterCombat("yell", L.YellPullHounds)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 244057 244056",
	"SPELL_CAST_SUCCESS 244072 251445 245098 244086",
	"SPELL_AURA_APPLIED 244768 248815 254429 248819 244054 244055 251356",
	"SPELL_AURA_REMOVED 244768 248815 254429 248819 251356",
--	"SPELL_PERIODIC_DAMAGE",
--	"SPELL_PERIODIC_MISSED",
	"UNIT_SPELLCAST_SUCCEEDED boss1 boss2"
)

local Fharg = DBM:EJ_GetSectionInfo(15842)
local Shatug = DBM:EJ_GetSectionInfo(15836)
--[[
(ability.id = 244057 or ability.id = 244056) and type = "begincast"
 or (ability.id = 244072 or ability.id = 251445 or ability.id = 245098 or ability.id = 251356 or ability.id = 254429) and type = "cast"
--]]
--F'harg
local warnBurningMaw					= mod:NewTargetAnnounce(251448, 2, nil, false, 2) --Пылающая пасть
local warnDesolateGaze					= mod:NewTargetAnnounce(244768, 3) --Опустошающий взгляд
local warnEnflamedCorruption			= mod:NewSpellAnnounce(244057, 3) --Возгорание порчи
--local warnEnflamed						= mod:NewTargetAnnounce(248815, 3) --Возгорание
local warnMoltenTouch					= mod:NewSpellAnnounce(244072, 2) --Касание магмы
--Shatug
local warnCorruptingMaw					= mod:NewTargetAnnounce(251447, 2, nil, false, 2) --Заразная пасть
local warnWeightofDarkness				= mod:NewTargetAnnounce(254429, 3) --Бремя тьмы
local warnSiphonCorruption				= mod:NewSpellAnnounce(244056, 3) --Вытягивание порчи
local warnSiphoned						= mod:NewTargetAnnounce(248819, 3, nil, false, 2) --Вытягивание
--General/Mythic
local warnFocusingPower					= mod:NewSpellAnnounce(251356, 2) --Фокусирование силы

--F'harg
local specWarnMoltenTouch				= mod:NewSpecialWarningDodge(244072, nil, nil, nil, 2, 2) --Касание магмы
local specWarnDesolateGaze				= mod:NewSpecialWarningYouMoveAway(244768, nil, nil, nil, 1, 5) --Опустошающий взгляд
local specWarnEnflamed					= mod:NewSpecialWarningYouMoveAway(248815, nil, nil, nil, 1, 5) --Возгорание
--local specWarnGTFO					= mod:NewSpecialWarningGTFO(238028, nil, nil, nil, 1, 2)
--Shatug
local specWarnComsumingSphere			= mod:NewSpecialWarningDodge(244131, nil, nil, nil, 2, 2) --Поглощаяющая сфера
local specWarnWeightOfDarkness			= mod:NewSpecialWarningYouShare(254429, nil, nil, nil, 3, 5) --Бремя тьмы
local specWarnSiphoned					= mod:NewSpecialWarningYouShare(248819, nil, nil, nil, 3, 5) --Вытягивание
--Mythic
local specWarnFlameTouched				= mod:NewSpecialWarningYouPos(244054, nil, nil, nil, 3, 8) --Касание пламени
local specWarnShadowtouched				= mod:NewSpecialWarningYouPos(244055, nil, nil, nil, 3, 8) --Касание тьмы

--General/Mythic
local timerFocusingPower				= mod:NewCastTimer(15, 251356, nil, nil, nil, 6) --Фокусирование силы
mod:AddTimerLine(Fharg)
local timerBurningMawCD					= mod:NewCDTimer(10.1, 251448, nil, "Tank", nil, 5, nil, DBM_CORE_TANK_ICON) --Пылающая пасть
local timerMoltenTouchCD				= mod:NewCDTimer(95.9, 244072, nil, nil, nil, 3) --Касание магмы
local timerEnflamedCorruptionCD			= mod:NewCDTimer(95.9, 244057, nil, nil, nil, 3) --Возгорание порчи
local timerDesolateGazeCD				= mod:NewCDTimer(95.9, 244768, nil, nil, nil, 3) --Опустошающий взгляд
mod:AddTimerLine(Shatug)
local timerCorruptingMawCD				= mod:NewCDTimer(10.1, 251447, nil, "Tank", nil, 5, nil, DBM_CORE_TANK_ICON) --Заразная пасть
local timerComsumingSphereCD			= mod:NewCDTimer(77, 244131, nil, nil, nil, 2) --Поглощаяющая сфера
local timerWeightOfDarknessCD			= mod:NewCDTimer(77, 254429, nil, nil, nil, 3) --Бремя тьмы
local timerSiphonCorruptionCD			= mod:NewCDTimer(77, 244056, nil, nil, nil, 3) --Вытягивание порчи

local yellTouched						= mod:NewPosYell(244054, DBM_CORE_AUTO_YELL_CUSTOM_POSITION) --Касание пламени и тьмы
local yellWeightOfDarkness				= mod:NewYell(254429, nil, nil, nil, "YELL") --Бремя тьмы
local yellWeightOfDarknessFades			= mod:NewShortFadesYell(254429, nil, nil, nil, "YELL") --Бремя тьмы
local yellEnflamed						= mod:NewShortFadesYell(248815, nil, nil, nil, "YELL") --Возгорание
local yellDesolateGaze					= mod:NewYell(244768, nil, nil, nil, "YELL") --Опустошающий взгляд
local yellSiphoned						= mod:NewShortFadesYell(248819, nil, nil, nil, "YELL") --Вытягивание

local berserkTimer						= mod:NewBerserkTimer(600)

--F'harg
local countdownBurningMaw				= mod:NewCountdown("Alt10", 251448, "Tank", nil, 3) --Пылающая пасть
--Shatug
local countdownCorruptingMaw			= mod:NewCountdown("Alt10", 251447, "Tank", nil, 3) --Заразная пасть

mod:AddSetIconOption("SetIconOnWeightofDarkness2", 254429, true, false, {5, 4, 3, 2, 1}) --Бремя тьмы
--mod:AddInfoFrameOption(239154, true)
mod:AddRangeFrameOption("5/8")
mod:AddBoolOption("SequenceTimers", false)

mod.vb.WeightDarkIcon = 0
mod.vb.longTimer = 95.9
mod.vb.mediumTimer = 77

local function UpdateAllTimers(self)
	countdownBurningMaw:Cancel()
	countdownCorruptingMaw:Cancel()
	--Fire Doggo
	timerBurningMawCD:Stop()
	timerMoltenTouchCD:AddTime(15)
	timerEnflamedCorruptionCD:AddTime(15)
	timerDesolateGazeCD:AddTime(15)
	--Shadow Doggo
	timerCorruptingMawCD:Stop()
	timerComsumingSphereCD:AddTime(15)
	timerWeightOfDarknessCD:AddTime(15)
	timerSiphonCorruptionCD:AddTime(15)
end

function mod:OnCombatStart(delay)
	if self:AntiSpam(10, 1) then
		--Do nothing, it just disables UpdateAllTimers/Focused Power from firing on pull
	end
	self.vb.WeightDarkIcon = 0
	--Fire doggo
	berserkTimer:Start(-delay)
	timerBurningMawCD:Start(8.2-delay)--was same on heroic/mythic, or now
	--countdownBurningMaw:Start(8.2-delay)
	timerCorruptingMawCD:Start(8.9-delay)--was same on heroic/normal, for now
	--countdownCorruptingMaw:Start(8.9-delay)
	--Shadow doggo
	if self:IsMythic() then
		self.vb.longTimer = 88.3--88.3-89
		self.vb.mediumTimer = 71.4--71.4-73
		timerMoltenTouchCD:Start(21-delay) --Касание магмы +3 сек
		timerSiphonCorruptionCD:Start(25.5-delay)
	elseif self:IsHeroic() then
		self.vb.longTimer = 95.9
		self.vb.mediumTimer = 77
		timerMoltenTouchCD:Start(18-delay)--was same on heroic/mythic, or now
		timerSiphonCorruptionCD:Start(26.7-delay)
	else
		self.vb.longTimer = 104.5
		self.vb.mediumTimer = 85
		--Molten touch not even cast
		if not self:IsLFR() then
			timerSiphonCorruptionCD:Start(29.4-delay)
		end
	end
	if not self.Options.SequenceTimers then
		if self:IsMythic() then
			--Fire doggo
			timerEnflamedCorruptionCD:Start(49.5-delay) --Возгорание порчи +1.2 сек
			timerDesolateGazeCD:Start(78-delay)
			--Shadow doggo
			timerComsumingSphereCD:Start(49.5-delay) --Поглощаяющая сфера +1.2 сек
			timerWeightOfDarknessCD:Start(73.1-delay)
		elseif self:IsHeroic() then
			--Fire doggo
			timerEnflamedCorruptionCD:Start(51.1-delay)
			timerDesolateGazeCD:Start(82.4-delay)
			--Shadow doggo
			timerComsumingSphereCD:Start(51.1-delay)
			timerWeightOfDarknessCD:Start(77-delay)
		else--Normal confirmed, LFR assumed
			--Fire doggo
			if not self:IsLFR() then
				timerEnflamedCorruptionCD:Start(55.2-delay)
			end
			timerDesolateGazeCD:Start(88.8-delay)
			--Shadow doggo
			timerComsumingSphereCD:Start(55.2-delay)
			--Weight not even cast
		end
	end
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(5)--Molten Touch (assumed)
	end
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
--	if self.Options.InfoFrame then
--		DBM.InfoFrame:Hide()
--	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 244057 then
		warnEnflamedCorruption:Show()
		if not self.Options.SequenceTimers or self:IsEasy() then
			timerEnflamedCorruptionCD:Start(self.vb.longTimer)
		else
			if self:IsMythic() then
				timerDesolateGazeCD:Start(29.2)
			else
				timerDesolateGazeCD:Start(30.5)--30.5-31.7
			end
		end
	elseif spellId == 244056 then
		warnSiphonCorruption:Show()
		if not self.Options.SequenceTimers or self:IsEasy() then
			timerSiphonCorruptionCD:Start(self.vb.mediumTimer)
		else
			if self:IsMythic() then
				timerComsumingSphereCD:Start(23.2)--23.2
			else
				timerComsumingSphereCD:Start(24.4)--24.4-25.74
			end
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 244086 and self:AntiSpam(3, 1) then -- 244072 (изначальный)
		warnMoltenTouch:Show()
		warnMoltenTouch:Play("watchstep")
	--	specWarnMoltenTouch:Show()
	--	specWarnMoltenTouch:Play("watchstep")
		if not self.Options.SequenceTimers or self:IsEasy() then
			timerMoltenTouchCD:Start(self.vb.longTimer)
		else
			if self:IsMythic() then
				timerEnflamedCorruptionCD:Start(30.5)
			else
				timerEnflamedCorruptionCD:Start(33)--33-34.2
			end
		end
	elseif spellId == 251445 then
		warnBurningMaw:Show(args.destName)
		if self:IsMythic() then
			timerBurningMawCD:Start(9.7)
			if self:CheckInterruptFilter(args.sourceGUID, true) then
				countdownBurningMaw:Start(9.7)
			end
		else
			timerBurningMawCD:Start()
			if self:CheckInterruptFilter(args.sourceGUID, true) then
				countdownBurningMaw:Start()
			end
		end
	elseif spellId == 245098 then
		warnCorruptingMaw:Show(args.destName)
		timerCorruptingMawCD:Start()
		if self:CheckInterruptFilter(args.sourceGUID, true) then
			countdownCorruptingMaw:Start()
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 244768 then
		warnDesolateGaze:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnDesolateGaze:Show()
			specWarnDesolateGaze:Play("runout")
			yellDesolateGaze:Yell()
		end
	elseif spellId == 251356 and self:AntiSpam(10, 1) then --Фокусирование силы
		warnFocusingPower:Show()
		timerFocusingPower:Start()
		UpdateAllTimers(self)
	elseif spellId == 248815 then--Enflamed
	--	warnEnflamed:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnEnflamed:Show()
			specWarnEnflamed:Play("scatter")
			yellEnflamed:Countdown(4)
			if self.Options.RangeFrame then
				DBM.RangeCheck:Show(8)
			end
		end
	elseif spellId == 248819 then--Siphoned
		warnSiphoned:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnSiphoned:Show()
		--	specWarnSiphoned:Play("gathershare")
			yellSiphoned:Countdown(4)
			if self.Options.RangeFrame then
				DBM.RangeCheck:Show(8)
			end
		end
	elseif spellId == 254429 then
		self.vb.WeightDarkIcon = self.vb.WeightDarkIcon + 1
		warnWeightofDarkness:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnWeightOfDarkness:Show()
		--	specWarnWeightOfDarkness:Play("gathershare")
			yellWeightOfDarkness:Yell()
			yellWeightOfDarknessFades:Countdown(5, 3)
		end
		if self.Options.SetIconOnWeightofDarkness2 then
			self:SetIcon(args.destName, self.vb.WeightDarkIcon)
		end
	elseif spellId == 244054 then--Flametouched
		if args:IsPlayer() then
			specWarnFlameTouched:Show(self:IconNumToTexture(7))--Red X for flame (more voted on red x than orange circle)
			specWarnFlameTouched:Play("flameonyou")
			yellTouched:Yell(7, "", 7)
		end
	elseif spellId == 244055 then--Shadowtouched
		if args:IsPlayer() then
			specWarnShadowtouched:Show(self:IconNumToTexture(3))--Purple diamond for shadow
			specWarnShadowtouched:Play("shadowonyou")
			yellTouched:Yell(3, "", 3)
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 248815 then--Enflamed
		if args:IsPlayer() then
			yellEnflamed:Cancel()
			if self.Options.RangeFrame then
				DBM.RangeCheck:Show(5)
			end
		end
	elseif spellId == 248819 then--Siphoned
		if args:IsPlayer() then
			yellSiphoned:Cancel()
			if self.Options.RangeFrame then
				DBM.RangeCheck:Show(5)
			end
		end
	elseif spellId == 254429 then
		if self.Options.SetIconOnWeightofDarkness2 then
			self:SetIcon(args.destName, 0)
		end
		if args:IsPlayer() then
			yellWeightOfDarknessFades:Cancel()
		end
	end
end

--[[
function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 228007 and destGUID == UnitGUID("player") and self:AntiSpam(2, 4) then
		specWarnGTFO:Show()
		specWarnGTFO:Play("runaway")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg, npc, _, _, target)
	if msg:find("spell:238502") then

	end
end
--]]

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, bfaSpellId, _, legacySpellId)
	local spellId = legacySpellId or bfaSpellId
	if spellId == 244159 then--Consuming Sphere
		specWarnComsumingSphere:Show()
		specWarnComsumingSphere:Play("watchorb")
		if not self.Options.SequenceTimers or self:IsEasy() then
			timerComsumingSphereCD:Start(self.vb.mediumTimer)
		else
			if self:IsMythic() then
				timerWeightOfDarknessCD:Start(24.3)
			else
				timerWeightOfDarknessCD:Start(25.6)--25.6-27
			end
		end
	elseif spellId == 244064 then--Desolate Gaze
		if not self.Options.SequenceTimers or self:IsEasy() then
			timerDesolateGazeCD:Start(self.vb.longTimer)
		else
			if self:IsMythic() then
				timerMoltenTouchCD:Start(29.2)
			else
				timerMoltenTouchCD:Start(31.6)--31.6-33
			end
		end
	elseif spellId == 244069 then--Weight of Darkness
		self.vb.WeightDarkIcon = 0
		if not self.Options.SequenceTimers or self:IsEasy() then
			timerWeightOfDarknessCD:Start(self.vb.mediumTimer)
		else
			if self:IsMythic() then
				timerSiphonCorruptionCD:Start(24.3)
			else
				timerSiphonCorruptionCD:Start(26.7)--26.7-26.9
			end
		end
	end
end
