local mod	= DBM:NewMod(1906, "DBM-Party-Legion", 12, 900)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 17603 $"):sub(12, -3))
mod:SetCreatureID(117194)
mod:SetEncounterID(2057)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 238484 237726",
	"SPELL_CAST_START 237276",
	"SPELL_CAST_SUCCESS 243124"
)

--TODO, see if book local is ok in non english
--TODO, add http://ptr.wowhead.com/spell=238678/stifling-satire?
local warnScornfulGaze				= mod:NewTargetAnnounce(237726, 4, nil, nil, 2) --Глумливый взгляд
local warnHeaveCrud					= mod:NewSpellAnnounce(243124, 2)

local specWarnPulvCrudgel			= mod:NewSpecialWarningRun(237276, "Melee", nil, nil, 4, 2) --Сокрушающая дубина
local specWarnPulvCrudgel2			= mod:NewSpecialWarningDodge(237276, "Ranged", nil, nil, 2, 2) --Сокрушающая дубина
local specWarnMindControl			= mod:NewSpecialWarningSwitchCount(238484, nil, DBM_CORE_AUTO_SPEC_WARN_OPTIONS.switch:format(238484), nil, 1, 2)
local specWarnScornfulGaze			= mod:NewSpecialWarning("bookCase", nil, nil, nil, 3, 5) --Глумливый взгляд

local timerPulvCrudgelCD			= mod:NewCDTimer(34.2, 237276, nil, nil, nil, 2, nil, DBM_CORE_TANK_ICON)--Might be shorter if not stunned by gaze/books
local timerScornfulGazeCD			= mod:NewCDTimer(36.5, 237726, nil, nil, nil, 3, nil, DBM_CORE_DEADLY_ICON)
local timerHeaveCrudCD				= mod:NewCDTimer(36.5, 243124, nil, nil, nil, 3)

local yellScornfulGaze				= mod:NewYell(237726, nil, nil, nil, "YELL")

function mod:OnCombatStart(delay)
	timerPulvCrudgelCD:Start(6-delay)
	timerHeaveCrudCD:Start(15.5-delay)
	timerScornfulGazeCD:Start(26.7-delay)
end

function mod:OnCombatEnd()
--	if self.Options.RangeFrame then
--		DBM.RangeCheck:Hide()
--	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 238484 then
		specWarnMindControl:Show(args.destName)
		if args:IsPlayer() then
			--Add a yell?
			specWarnMindControl:Play("targetyou")
		else
			specWarnMindControl:Play("findmc")
		end
	elseif spellId == 237726 then
		timerScornfulGazeCD:Start()
		if args:IsPlayer() then
			specWarnScornfulGaze:Show()
			yellScornfulGaze:Yell()
		else
			warnScornfulGaze:Show(args.destName)
		end
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 237276 then
		specWarnPulvCrudgel:Show()
		specWarnPulvCrudgel2:Show()
		timerPulvCrudgelCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 243124 then
		warnHeaveCrud:Show()
		timerHeaveCrudCD:Start()
	end
end

--[[
function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 188494 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnRancidMaw:Show()
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, bfaSpellId, _, legacySpellId)
	local spellId = legacySpellId or bfaSpellId
	if spellId == 199817 then

	end
end
--]]
