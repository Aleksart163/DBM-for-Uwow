local mod	= DBM:NewMod("RareEnemies", "DBM-BrokenIsles", nil, 822)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 17650 $"):sub(12, -3))
mod:SetZone()
mod:SetMinSyncRevision(17650)

mod:RegisterEvents(
	"SPELL_CAST_START 221424 222676 189157 214095 218245 218250 217527 213585 206794 223101 223104 220197 219060 206762 203671 222596 216808 216837 218885 223659 223630 207002 206995 206972 216981 216970",
	"SPELL_CAST_SUCCESS 221422 214183 223094 216881 218969",
	"SPELL_AURA_APPLIED 221422 221425 222676 218250 223094 219102 219087 206795 219060 223630 206972",
	"SPELL_AURA_APPLIED_DOSE 221425",
	"SPELL_AURA_REMOVED 221422 221425",
	"SPELL_PERIODIC_DAMAGE 218960",
	"SPELL_PERIODIC_MISSED 218960",
	"CHAT_MSG_MONSTER_SAY",
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_DIED"
)
--Для https://ru.wowhead.com/npc=126889/соролис-нелюбимец-судьбы на Аргусе
--local specWarnChaoticFlames		= mod:NewSpecialWarningInterrupt(254106, "-Healer", nil, nil, 1, 2) --Пламя хаоса
--local specWarnDarkRift			= mod:NewSpecialWarningInterrupt(254099, "HasInterrupt2", nil, nil, 3, 2) --Разлом тьмы

local warnCrushArmor			= mod:NewStackAnnounce(221425, 1) --Сокрушение доспеха
local warnImpale				= mod:NewTargetAnnounce(222676, 4) --Прокалывание
local warnArcticTorrent			= mod:NewTargetAnnounce(218245, 4) --Арктический поток
local warnWebWrap				= mod:NewTargetAnnounce(223094, 3) --Кокон
local warnClubSlam				= mod:NewTargetAnnounce(203671, 4) --Мощный удар дубиной
local warnWickedLeap			= mod:NewTargetAnnounce(216808, 3) --Жестокий прыжок
local warnHorrificVisage		= mod:NewSpellAnnounce(216881, 2) --Ужасающий лик
local warnRemnantofLight		= mod:NewTargetAnnounce(216837, 3) --Частица Света
local warnFelFissure			= mod:NewTargetAnnounce(218885, 3) --Разлом скверны
local warnDepthCharge			= mod:NewTargetAnnounce(207002, 3) --Глубинная бомба

local specWarnElemRes			= mod:NewSpecialWarningDodge(216970, nil, nil, nil, 2, 3) --Стихийный резонанс
local specWarnCrysShards		= mod:NewSpecialWarningDodge(216981, nil, nil, nil, 2, 3) --Осколки кристалла
local specWarnDepthCharge		= mod:NewSpecialWarningYouMove(207002, nil, nil, nil, 3, 3) --Глубинная бомба
local specWarnTidalEruption		= mod:NewSpecialWarningDodge(206995, nil, nil, nil, 2, 2) --Приливное извержение
local specWarnHullBreach		= mod:NewSpecialWarningYouDefensive(206972, nil, nil, nil, 1, 3) --Пробой корпуса
local specWarnSoulCleave		= mod:NewSpecialWarningDodge(223630, nil, nil, nil, 2, 5) --Раскалывание душ
local specWarnSoulCleave2		= mod:NewSpecialWarningYou(223630, nil, nil, nil, 1, 3) --Раскалывание душ
local specWarnWorldBreaker		= mod:NewSpecialWarningDodge(223659, nil, nil, nil, 2, 5) --Миродробитель
local specWarnFelFissure		= mod:NewSpecialWarningDodge(218885, nil, nil, nil, 2, 5) --Разлом скверны
local specWarnFelFissure2		= mod:NewSpecialWarningYouMove(218960, nil, nil, nil, 1, 5) --Разлом скверны
local specWarnWickedLeap		= mod:NewSpecialWarningDodge(216808, nil, nil, nil, 2, 5) --Жестокий прыжок
local specWarnHorrificVisage	= mod:NewSpecialWarningLookAway(216881, nil, nil, nil, 3, 5) --Ужасающий лик
local specWarnRemnantofLight	= mod:NewSpecialWarningInterrupt2(216837, "HasInterrupt2", nil, nil, 2, 5) --Частица Света
local specWarnClubSlam			= mod:NewSpecialWarningYouDefensive(203671, nil, nil, nil, 3, 5) --Мощный удар дубиной
local specWarnClubSlam2			= mod:NewSpecialWarningDodge(203671, nil, nil, nil, 2, 5) --Мощный удар дубиной
local specWarnCrushingBite		= mod:NewSpecialWarningYouDefensive(206795, nil, nil, nil, 2, 5) --Дробящий укус
local specWarnFearsomeShriek	= mod:NewSpecialWarningInterrupt(206762, "-Healer", nil, nil, 1, 2) --Пугающий визг
local specWarnOverdrive			= mod:NewSpecialWarningDefensive(219087, nil, nil, nil, 2, 5) --Форсаж
local specWarnProtectiveShell	= mod:NewSpecialWarningInterrupt(219060, "-Healer", nil, nil, 1, 2) --Защитная раковина
local specWarnProtectiveShellDis = mod:NewSpecialWarningDispel(219060, "MagicDispeller", nil, nil, 3, 2) --Защитная раковина
local specWarnArcticSlam		= mod:NewSpecialWarningRun(220197, "Melee", nil, nil, 4, 5) --Арктический мощный удар
local specWarnArcticSlam2		= mod:NewSpecialWarningDodge(220197, "Ranged", nil, nil, 2, 5) --Арктический мощный удар
local specWarnWebWrap			= mod:NewSpecialWarningSwitch(223094, "-Healer", nil, nil, 3, 2) --Кокон
local specWarnFertilize			= mod:NewSpecialWarningInterrupt2(223104, "HasInterrupt2", nil, nil, 3, 2) --Удобрение
local specWarnEnchantedVenom	= mod:NewSpecialWarningInterrupt(223101, "-Healer", nil, nil, 1, 2) --Зачарованный яд
local specWarnNova				= mod:NewSpecialWarningRun(206794, "Melee", nil, nil, 4, 5) --Новая
local specWarnNova2				= mod:NewSpecialWarningDodge(206794, "Ranged", nil, nil, 2, 3) --Новая
local specWarnCorruptionBarrage = mod:NewSpecialWarningDodge(213585, nil, nil, nil, 1, 3) --Обстрел порчей
local specWarnOverflowingTaint 	= mod:NewSpecialWarningDodge(217527, nil, nil, nil, 2, 3) --Переполняющая порча
local specWarnVortex			= mod:NewSpecialWarningInterrupt(214183, "HasInterrupt", nil, nil, 3, 5) --Воронка
local specWarnDeathWail			= mod:NewSpecialWarningRun(189157, "Melee", nil, nil, 4, 5) --Вой смерти
local specWarnArcticTorrent		= mod:NewSpecialWarningDodge(218245, nil, nil, nil, 2, 3) --Арктический поток
local specWarnDeathWail2		= mod:NewSpecialWarningDodge(189157, "Ranged", nil, nil, 2, 3) --Вой смерти
local specWarnFlrglDrglDrglGrgl2 = mod:NewSpecialWarningDodge(218250, nil, nil, nil, 2, 3) --Флргл Дргл Дргл Гргл
local specWarnBladeBarrage		= mod:NewSpecialWarningDodge(222596, "Ranged", nil, nil, 2, 3) --Залп клинков
local specWarnBladeBarrage2		= mod:NewSpecialWarningRun(222596, "Melee", nil, nil, 4, 5) --Залп клинков
local specWarnFlrglDrglDrglGrgl	= mod:NewSpecialWarningInterrupt(218250, "-Healer", nil, nil, 3, 5) --Флргл Дргл Дргл Гргл
local specWarnFear				= mod:NewSpecialWarningInterrupt(221424, "HasInterrupt", nil, nil, 3, 5) --Страх
local specWarnArcaneResonance	= mod:NewSpecialWarningInterrupt2(214095, "HasInterrupt2", nil, nil, 3, 5) --Резонанс
local specWarnImpale			= mod:NewSpecialWarningInterrupt(222676, "HasInterrupt", nil, nil, 3, 5) --Прокалывание
local specWarnViciousBite		= mod:NewSpecialWarningYouDefensive(221422, nil, nil, nil, 2, 5) --Яростный укус
local specWarnCrushArmor		= mod:NewSpecialWarningStack(221425, nil, 3, nil, nil, 3, 5) --Сокрушение доспеха

local timerClubSlamCD			= mod:NewCDTimer(20, 203671, nil, nil, nil, 3, nil, DBM_CORE_DEADLY_ICON) --Мощный удар дубиной
local timerFearsomeShriekCD		= mod:NewCDTimer(23, 206762, nil, nil, nil, 2, nil, DBM_CORE_DEADLY_ICON) --Пугающий визг
local timerOverdriveCD			= mod:NewCDTimer(30, 219087, nil, nil, nil, 3, nil, DBM_CORE_DEADLY_ICON) --Форсаж
local timerProtectiveShellCD	= mod:NewCDTimer(30, 219060, nil, nil, nil, 3, nil, DBM_CORE_INTERRUPT_ICON) --Защитная раковина
local timerExposedCoreCD		= mod:NewCDTimer(30, 219102, nil, nil, nil, 3, nil, DBM_CORE_DAMAGE_ICON) --Уязвимое место
local timerArcticSlamCD			= mod:NewCDTimer(20, 220197, nil, nil, nil, 2, nil, DBM_CORE_DEADLY_ICON) --Арктический мощный удар
local timerWebWrapCD			= mod:NewCDTimer(22, 223094, nil, nil, nil, 3, nil, DBM_CORE_DAMAGE_ICON) --Кокон
local timerFertilizeCD			= mod:NewCDTimer(22, 223104, nil, nil, nil, 3, nil, DBM_CORE_DAMAGE_ICON) --Удобрение
local timerOverflowingTaintCD	= mod:NewCDTimer(15, 217527, nil, nil, nil, 3, nil) --Переполняющая порча
--Камнепад оползающий
local timerElemResCD			= mod:NewCDTimer(35, 216970, nil, nil, nil, 2, nil) --Стихийный резонанс
local timerCrysShardsCD			= mod:NewCDTimer(35, 216981, nil, nil, nil, 3, nil, DBM_CORE_DEADLY_ICON) --Осколки кристалла
--Олокк Кораблекрушитель
local timerDepthChargeCD		= mod:NewCDTimer(25, 207002, nil, nil, nil, 3, nil) --Глубинная бомба
local timerHullBreachCD			= mod:NewCDTimer(12, 206972, nil, nil, nil, 3, nil, DBM_CORE_TANK_ICON) --Пробой корпуса
local timerTidalEruptionCD		= mod:NewCDTimer(19, 206995, nil, nil, nil, 2, nil) --Приливное извержение
--Воспламеан
local timerFelFissureCD			= mod:NewCDTimer(20, 218885, nil, nil, nil, 3, nil) --Разлом скверны
local timerFelMeteorCD			= mod:NewCDTimer(15, 218969, nil, nil, nil, 2, nil) --Метеорит скверны
--Лагерта
local timerWickedLeapCD			= mod:NewCDTimer(35, 216808, nil, nil, nil, 3, nil) --Жестокий прыжок
local timerHorrificVisageCD		= mod:NewCDTimer(35, 216881, nil, nil, nil, 3, nil) --Ужасающий лик
local timerRemnantofLightCD		= mod:NewCDTimer(35, 216837, nil, nil, nil, 3, nil) --Частица Света
--Яростная китовая акула
local timerViciousBite			= mod:NewTargetTimer(15, 221422, nil, nil, nil, 5, nil) --Яростный укус
local timerViciousBiteCD		= mod:NewCDTimer(30, 221422, nil, nil, nil, 5, nil, DBM_CORE_TANK_ICON) --Яростный укус
local timerCrushArmor			= mod:NewTargetTimer(20, 221425, nil, nil, nil, 5, nil, DBM_CORE_TANK_ICON) --Сокрушение доспеха
--Джейд темная гавань
local timerBladeBarrageCD		= mod:NewCDTimer(13, 222596, nil, nil, nil, 2, nil, DBM_CORE_DEADLY_ICON) --Залп клинков
local timerImpaleCD				= mod:NewCDTimer(10.5, 222676, nil, nil, nil, 3, nil, DBM_CORE_MAGIC_ICON) --Прокалывание
--Гргл бргл
local timerArcticTorrentCD		= mod:NewCDTimer(35, 218245, nil, nil, nil, 3, nil, DBM_CORE_DEADLY_ICON) --Арктический поток
local timerFlrglDrglDrglGrglCD	= mod:NewCDTimer(20, 218250, nil, nil, nil, 2, nil, DBM_CORE_INTERRUPT_ICON) --Флргл Дргл Дргл Гргл

local timerRoleplay				= mod:NewTimer(30, "timerRoleplay", "Interface\\Icons\\Spell_Holy_BorrowedTime", nil, nil, 7) --Ролевая игра

local yellDepthCharge			= mod:NewYell(207002, nil, nil, nil, "YELL") --Глубинная бомба
local yellFelFissure			= mod:NewYell(218885, nil, nil, nil, "YELL") --Разлом скверны
local yellWickedLeap			= mod:NewYell(216808, nil, nil, nil, "YELL") --Жестокий прыжок
local yellRemnantofLight		= mod:NewYell(216837, nil, nil, nil, "YELL") --Частица Света
local yellClubSlam				= mod:NewYell(203671, nil, nil, nil, "YELL") --Мощный удар дубиной
local yellWebWrap				= mod:NewYell(223094, nil, nil, nil, "YELL") --Кокон
local yellImpale				= mod:NewYell(222676, nil, nil, nil, "YELL") --Прокалывание
local yellImpaleFades			= mod:NewFadesYell(222676, nil, nil, nil, "YELL") --Прокалывание
local yellArcticTorrent			= mod:NewYell(218245, nil, nil, nil, "YELL") --Арктический поток

function mod:ArcticTorrentTarget(targetname, uId)
	if not targetname then return end
	warnArcticTorrent:Show(targetname)
	if targetname == UnitName("player") then
		specWarnArcticTorrent:Show()
		specWarnArcticTorrent:Play("targetyou")
		yellArcticTorrent:Yell()
	else
		specWarnArcticTorrent:Show()
		specWarnArcticTorrent:Play("watchstep")
	end
end

function mod:ClubSlamTarget(targetname, uId)
	if not targetname then return end
	warnClubSlam:Show(targetname)
	if targetname == UnitName("player") then
		specWarnClubSlam:Show()
		specWarnClubSlam:Play("defensive")
		yellClubSlam:Yell()
	else
		specWarnClubSlam2:Show()
		specWarnClubSlam2:Play("watchstep")
	end
end

function mod:WickedLeapTarget(targetname, uId)
	if not targetname then return end
	warnWickedLeap:Show(targetname)
	if targetname == UnitName("player") then
		specWarnWickedLeap:Show()
		specWarnWickedLeap:Play("watchstep")
		yellWickedLeap:Yell()
	else
		specWarnWickedLeap:Show()
		specWarnWickedLeap:Play("watchstep")
	end
end

function mod:RemnantofLightTarget(targetname, uId)
	if not targetname then return end
	warnRemnantofLight:Show(targetname)
	if targetname == UnitName("player") then
		specWarnRemnantofLight:Show()
		specWarnRemnantofLight:Play("kickcast")
		specWarnHorrificVisage:Schedule(3)
		yellRemnantofLight:Yell()
	else
		specWarnRemnantofLight:Show()
		specWarnRemnantofLight:Play("kickcast")
		specWarnHorrificVisage:Schedule(3)
	end
end

function mod:FelFissureTarget(targetname, uId)
	if not targetname then return end
	warnFelFissure:Show(targetname)
	if targetname == UnitName("player") then
		specWarnFelFissure:Show()
		specWarnFelFissure:Play("watchstep")
		yellFelFissure:Yell()
	else
		specWarnFelFissure:Show()
		specWarnFelFissure:Play("watchstep")
	end
end

function mod:DepthChargeTarget(targetname, uId) --Глубинная бомба
	if not targetname then return end
	warnDepthCharge:Show(targetname)
	if targetname == UnitName("player") then
		specWarnDepthCharge:Show()
		specWarnDepthCharge:Play("runout")
		yellDepthCharge:Yell()
	end
end

function mod:OverdriveTarget(targetname, uId) --Форсаж
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnOverdrive:Show()
		specWarnOverdrive:Play("defensive")
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 221424 and self:CheckInterruptFilter(args.sourceGUID, false, true) then --Страх
		specWarnFear:Show()
		specWarnFear:Play("kickcast")
	elseif spellId == 222676 and self:CheckInterruptFilter(args.sourceGUID, false, true) then --Прокалывание
		specWarnImpale:Show()
		specWarnImpale:Play("kickcast")
		timerImpaleCD:Start()
	elseif spellId == 189157 then --Вой смерти
		specWarnDeathWail:Show()
		specWarnDeathWail:Play("justrun")
		specWarnDeathWail2:Show()
		specWarnDeathWail2:Play("watchstep")
	elseif spellId == 214095 then --Резонанс
		specWarnArcaneResonance:Show()
		specWarnArcaneResonance:Play("kickcast")
	elseif spellId == 218245 then --Арктический поток
		self:BossTargetScanner(args.sourceGUID, "ArcticTorrentTarget", 0.1, 2)
		timerArcticTorrentCD:Start()
		timerFlrglDrglDrglGrglCD:Start()
	elseif spellId == 218250 then --Флргл Дргл Дргл Гргл
		specWarnFlrglDrglDrglGrgl:Show()
	elseif spellId == 222596 then --Залп клинков
		specWarnBladeBarrage:Show()
		specWarnBladeBarrage2:Show()
		timerBladeBarrageCD:Start()
	elseif spellId == 217527 and self:CheckInterruptFilter(args.sourceGUID, false, true) then --Переполняющая порча
		specWarnOverflowingTaint:Show()
		timerOverflowingTaintCD:Start()
	elseif spellId == 213585 then --Обстрел порчей
		specWarnCorruptionBarrage:Show()
	elseif spellId == 206794 then --Новая
		specWarnNova:Show()
		specWarnNova2:Show()
	elseif spellId == 223101 and self:CheckInterruptFilter(args.sourceGUID, false, true) then --Обстрел порчей
		specWarnEnchantedVenom:Show()
	elseif spellId == 223104 then --Удобрение
		specWarnFertilize:Show()
		timerFertilizeCD:Start()
	elseif spellId == 220197 then --Арктический мощный удар
		specWarnArcticSlam:Show()
		specWarnArcticSlam2:Show()
		timerArcticSlamCD:Start()
	elseif spellId == 219060 then --Защитная раковина
		specWarnProtectiveShell:Show()
		timerProtectiveShellCD:Start()
	elseif spellId == 219060 and self:CheckInterruptFilter(args.sourceGUID, false, true) then --Пугающий визг
		specWarnFearsomeShriek:Show()
		timerFearsomeShriekCD:Start()
	elseif spellId == 203671 then --Мощный удар дубиной
		self:BossTargetScanner(args.sourceGUID, "ClubSlamTarget", 0.1, 2)
		timerClubSlamCD:Start()
	elseif spellId == 216808 then --Жестокий прыжок
		self:BossTargetScanner(args.sourceGUID, "WickedLeapTarget", 0.1, 2)
		timerWickedLeapCD:Start()
	elseif spellId == 216808 then --Частица Света
		self:BossTargetScanner(args.sourceGUID, "RemnantofLightTarget", 0.1, 2)
		timerRemnantofLightCD:Start()
	elseif spellId == 218885 then --Разлом скверны
		self:BossTargetScanner(args.sourceGUID, "FelFissureTarget", 0.1, 2)
		timerFelFissureCD:Start()
	elseif spellId == 223659 then --Миродробитель
		specWarnWorldBreaker:Show()
	elseif spellId == 223630 then --Раскалывание душ
		specWarnSoulCleave:Show()
	elseif spellId == 207002 then --Глубинная бомба
		self:BossTargetScanner(args.sourceGUID, "DepthChargeTarget", 0.1, 2)
		timerDepthChargeCD:Start()
	elseif spellId == 206972 then --Пробой корпуса
		timerHullBreachCD:Start()
	elseif spellId == 206995 then --Приливное извержение
		specWarnTidalEruption:Show()
		specWarnTidalEruption:Play("watchstep")
		timerTidalEruptionCD:Start()
	elseif spellId == 216981 then --Осколки кристалла
		timerCrysShardsCD:Start()
		specWarnCrysShards:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 221422 then --Яростный укус
		timerViciousBiteCD:Start()
	elseif spellId == 218250 then --Флргл Дргл Дргл Гргл
		specWarnFlrglDrglDrglGrgl2:Show()
		specWarnFlrglDrglDrglGrgl2:Play("watchstep")
	elseif spellId == 214183 then --Воронка
		specWarnVortex:Show()
		specWarnVortex:Play("kickcast")
	elseif spellId == 223094 then --Кокон
		timerWebWrapCD:Start()
	elseif spellId == 216881 then --Ужасающий лик
		warnHorrificVisage:Show()
		timerHorrificVisageCD:Start()
	elseif spellId == 218969 then --Метеорит скверны
		timerFelMeteorCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if not self.Options.Enabled then return end
	local spellId = args.spellId
	if spellId == 221422 then --Яростный укус
		timerViciousBite:Start(args.destName)
		if args:IsPlayer() then
			specWarnViciousBite:Show()
		end
	elseif spellId == 221425 then --Сокрушение доспеха
		local amount = args.amount or 1
		warnCrushArmor:Show(args.destName, amount)
		timerCrushArmor:Start(args.destName)
		if amount >= 3 then
			if args:IsPlayer() then
				specWarnCrushArmor:Show(args.amount)
			end
		end
	elseif spellId == 222676 then --Прокалывание
		warnImpale:Show(args.destName)
		if args:IsPlayer() then
			yellImpale:Yell()
			yellImpaleFades:Countdown(3)
		end
	elseif spellId == 223094 then --Кокон
		warnWebWrap:CombinedShow(0.5, args.destName)
		if args:IsPlayer() then
			yellWebWrap:Yell()
		else
			specWarnWebWrap:Show()
		end
	elseif spellId == 219102 then --Уязвимое место
		timerExposedCoreCD:Start()
	elseif spellId == 219087 then --Форсаж
		self:BossTargetScanner(args.sourceGUID, "OverdriveTarget", 0.1, 2)
		timerOverdriveCD:Start()
	elseif spellId == 206795 then --Дробящий укус
		if args:IsPlayer() then
			specWarnCrushingBite:Show()
			specWarnCrushingBite:Play("defensive")
		end
	elseif spellId == 219060 then --Защитная раковина
		specWarnProtectiveShellDis:Show(args.destName)
		specWarnProtectiveShellDis:Play("dispelnow")
	elseif spellId == 223630 then --Раскалывание душ
		specWarnSoulCleave2:Show()
		specWarnSoulCleave2:Play("targetyou")
	elseif spellId == 206972 then --Пробой корпуса
		if args:IsPlayer() then
			specWarnHullBreach:Show()
			specWarnHullBreach:Play("defensive")
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 221422 then --Яростный укус
		timerViciousBite:Cancel(args.destName)
	elseif spellId == 221425 then --Сокрушение доспеха
		timerCrushArmor:Cancel(args.destName)
	end
end

function mod:CHAT_MSG_MONSTER_SAY(msg)
	if msg == L.PullSkulvrax then
		timerRoleplay:Start(31)
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 218960 and destGUID == UnitGUID("player") and self:AntiSpam(2, 1) then
		specWarnFelFissure2:Show()
		specWarnFelFissure2:Play("runaway")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 104481 then --Алаваште https://ru.wowhead.com/npc=104481/алаваште
		timerFearsomeShriekCD:Cancel()
	elseif cid == 109641 then --Арканор могучий https://ru.wowhead.com/npc=109641/арканор-могучий
		timerProtectiveShellCD:Cancel()
		timerExposedCoreCD:Cancel()
		timerOverdriveCD:Cancel()
	elseif cid == 101649 then --Ледяной осколок https://ru.wowhead.com/npc=101649/ледяной-осколок
		timerArcticSlamCD:Cancel()
	elseif cid == 111454 then --Бестрикс https://ru.wowhead.com/npc=111454/бестрикс
		timerWebWrapCD:Cancel()
		timerFertilizeCD:Cancel()
	elseif cid == 93654 then --Скалвракс https://ru.wowhead.com/npc=93654/скалвракс
		timerOverflowingTaintCD:Cancel()
	elseif cid == 103975 then --Джейд темная гавань https://ru.wowhead.com/npc=103975/джейд-темная-гавань
		timerBladeBarrageCD:Cancel()
		timerImpaleCD:Cancel()
	elseif cid == 109648 then --Гргл бргл https://ru.wowhead.com/npc=109648/знахарь-гргл-бргл
		timerArcticTorrentCD:Cancel()
		timerFlrglDrglDrglGrglCD:Cancel()
	elseif cid == 99899 then --Яростная китовая акула https://ru.wowhead.com/npc=99899/яростная-китовая-акула
		timerViciousBiteCD:Cancel()
	elseif cid == 105899 then --Оглок неистовый https://ru.wowhead.com/npc=105899/оглок-неистовый
		timerClubSlamCD:Cancel()
	elseif cid == 109015 then --Лагерта https://ru.wowhead.com/npc=109015/лагерта
		specWarnHorrificVisage:Cancel()
		timerWickedLeapCD:Cancel()
		timerHorrificVisageCD:Cancel()
		timerRemnantofLightCD:Cancel()
	elseif cid == 109630 then --Воспламеан https://ru.wowhead.com/npc=109630/воспламеан
		timerFelFissureCD:Cancel()
		timerFelMeteorCD:Cancel()
	elseif cid == 104484 then --Олокк Кораблекрушитель https://ru.wowhead.com/npc=104484/олокк-кораблекрушитель
		timerDepthChargeCD:Cancel()
		timerHullBreachCD:Cancel()
		timerTidalEruptionCD:Cancel()
	elseif cid == 109113 then --Камнепад оползающий https://ru.wowhead.com/npc=109113/камнепад-оползающий
		timerCrystalShardsCD:Cancel()
		timerElementalResonanceCD:Cancel()
	end
end
--
-- https://ru.wowhead.com/npc=109318/руновидец-сигвид
-- 
