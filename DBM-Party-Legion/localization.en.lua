local L

-----------------------
-- <<<Black Rook Hold>>> --
-----------------------
-----------------------
-- The Amalgam of Souls --
-----------------------
L= DBM:GetModLocalization(1518)

L:SetOptionLocalization{
	AnnounceSoulEchoes = "Announce the players on whom $spell:194966 in chat"
}

L:SetMiscLocalization{
	SoulEchoes = "Soul Echoes is used on: %s"
}

-----------------------
-- Illysanna Ravencrest --
-----------------------
L= DBM:GetModLocalization(1653)

-----------------------
-- Smashspite the Hateful --
-----------------------
L= DBM:GetModLocalization(1664)

-----------------------
-- Lord Kur'talos Ravencrest --
-----------------------
L= DBM:GetModLocalization(1672)

L:SetWarningLocalization({
	Phase2 = "Phase 2"
})

L:SetOptionLocalization({
	Phase2 = "Announce Phase 2"
})

L:SetMiscLocalization({
	Latosius = "Enough! I tire of this."
})

-----------------------
--Black Rook Hold Trash
-----------------------
L = DBM:GetModLocalization("BRHTrash")

L:SetGeneralLocalization({
	name =	"Black Rook Hold Trash"
})

L:SetOptionLocalization({
	timerRoleplay = "Show timer for roleplay duration"
})

L:SetTimerLocalization({
	timerRoleplay = GUILD_INTEREST_RP
})

L:SetMiscLocalization({
	RP1 = "Now... now I see..."
})

-----------
--Mythic+--
-----------
L = DBM:GetModLocalization("MAffix")

L:SetGeneralLocalization({
	name = "Mythic+ keys"
})

-----------------------
-- <<<Darkheart Thicket>>> --
-----------------------
-----------------------
-- Arch-Druid Glaidalis --
-----------------------
L= DBM:GetModLocalization(1654)

-----------------------
-- Oakheart --
-----------------------
L= DBM:GetModLocalization(1655)

L:SetMiscLocalization({
	ThrowYell = "Throw on %s"
})

-----------------------
-- Dresaron --
-----------------------
L= DBM:GetModLocalization(1656)

-----------------------
-- Shade of Xavius --
-----------------------
L= DBM:GetModLocalization(1657)

L:SetOptionLocalization{
--	AnnounceParanoia = "Announce the players on whom $spell:200289 in chat"
}

L:SetMiscLocalization{
--	Paranoia = "Growing Paranoia is used on: %s",
	ParanoiaYell = "Growing Paranoia on %s. Get away from me!"
}

L:SetMiscLocalization({
	XavApoc = "You will waste away slowly, painfully.",
	XavApoc2 = "I will fracture your feeble mind!"
})

-----------------------
--Darkheart Thicket Trash
-----------------------
L = DBM:GetModLocalization("DHTTrash")

L:SetGeneralLocalization({
	name =	"Darkheart Thicket Trash"
})


-----------------------
-- <<<Eye of Azshara>>> --
-----------------------
-----------------------
-- Warlord Parjesh --
-----------------------
L= DBM:GetModLocalization(1480)

-----------------------
-- Lady Hatecoil --
-----------------------
L= DBM:GetModLocalization(1490)

-----------------------
-- King Deepbeard --
-----------------------
L= DBM:GetModLocalization(1491)

-----------------------
-- Serpentrix --
-----------------------
L= DBM:GetModLocalization(1479)

-----------------------
-- Wrath of Azshara --
-----------------------
L= DBM:GetModLocalization(1492)

L:SetOptionLocalization{
	AnnounceArcaneBomb = "Announce the players on whom $spell:192706 in chat"
}

L:SetMiscLocalization{
	ArcaneBomb = "Arcane Bomb is used on: %s"
}

-----------------------
--Eye of Azshara Trash
-----------------------
L = DBM:GetModLocalization("EoATrash")

L:SetGeneralLocalization({
	name = "Eye of Azshara Trash"
})

-----------------------
-- <<<Halls of Valor>>> --
-----------------------
-----------------------
-- Hymdall --
-----------------------
L= DBM:GetModLocalization(1485)

-----------------------
-- Hyrja --
-----------------------
L= DBM:GetModLocalization(1486)

-----------------------
-- Fenryr --
-----------------------
L= DBM:GetModLocalization(1487)

L:SetWarningLocalization({
	Phase1 = "Phase 2 soon",
	Phase2 = "Phase 2"
})

L:SetOptionLocalization({
	Phase1 = "Warn in advance about phase 2 (on ~65%)",
	Phase2 = "Announce Phase 2"
})

-----------------------
-- God-King Skovald --
-----------------------
L= DBM:GetModLocalization(1488)


-----------------------
-- Odyn --
-----------------------
L= DBM:GetModLocalization(1489)

L:SetMiscLocalization({
	tempestModeMessage = "Not tempest sequence: %s. Rechecking in 8 seconds."
})

-----------------------
--Halls of Valor Trash
-----------------------
L = DBM:GetModLocalization("HoVTrash")

L:SetGeneralLocalization({
	name =	"Halls of Valor Trash"
})

L:SetOptionLocalization({
	timerRoleplay = "Show timer to the start of the battle with God-King Skovald and Odyn",
	BossActivation = "Activate combat with Odyn (and kings) in 1 click"
})

L:SetTimerLocalization({
	timerRoleplay = GUILD_INTEREST_RP
})

L:SetMiscLocalization({
	RPSkovald = "No! I, too, have proved my worth, Odyn. I am God-King Skovald! These mortals dare not challenge my claim to the aegis!",
	RPOdyn = "Most impressive! I never thought I would meet anyone who could match the Valarjar's strength... and yet here you stand.",
	RPSolsten = "Hyrja... the fury of the storm is yours to command!",
	RPSolsten2 = "You sully this ritual with your presence, mortals!",
	RPOlmyr = "The Light shines eternal in you, Hyrja!", --The Light embraces you, Hyrja! ???????? ?????????????? ???? ??????????
	RPOlmyr2 = "You will not deny Hyrja's ascendance!"
})

-----------------------
-- <<<Neltharion's Lair>>> --
-----------------------
-----------------------
-- Rokmora --
-----------------------
L= DBM:GetModLocalization(1662)

-----------------------
-- Ularogg Cragshaper --
-----------------------
L= DBM:GetModLocalization(1665)

-----------------------
-- Naraxas --
-----------------------
L= DBM:GetModLocalization(1673)

-----------------------
-- Dargrul the Underking --
-----------------------
L= DBM:GetModLocalization(1687)

-----------------------
--Neltharion's Lair Trash
-----------------------
L = DBM:GetModLocalization("NLTrash")

L:SetGeneralLocalization({
	name =	"Neltharion's Lair Trash"
})

L:SetOptionLocalization({
	timerRoleplay = "Show timer to the start of the battle with Rokmora" --"Interface\\Icons\\ability_warrior_offensivestance"
})

L:SetTimerLocalization({
	timerRoleplay = GUILD_INTEREST_RP
})

L:SetMiscLocalization({
	RoleP1 = "Navarrogg?! Betrayer! You would lead these intruders against us?!"
})

-----------------------
-- <<<The Arcway>>> --
-----------------------
-----------------------
-- Ivanyr --
-----------------------
L= DBM:GetModLocalization(1497)

-----------------------
-- Nightwell Sentry --
-----------------------
L= DBM:GetModLocalization(1498)

-----------------------
-- General Xakal --
-----------------------
L= DBM:GetModLocalization(1499)

L:SetMiscLocalization({
	batSpawn = "Reinforcements to me! NOW!"
})

-----------------------
-- Nal'tira --
-----------------------
L= DBM:GetModLocalization(1500)

-----------------------
-- Advisor Vandros --
-----------------------
L= DBM:GetModLocalization(1501)

L:SetWarningLocalization({
	Phase1 = "Phase 2 soon",
	Phase2 = "Phase 2"
})

L:SetOptionLocalization({
	Phase1 = "Warn in advance about phase 2 (on ~54%, Mythic+ only)",
	Phase2 = "Announce Phase 2"
})

L:SetMiscLocalization({
	Phase2Van = "Enough! You little beasts are getting out of hand!" --???????????????????????? ???????? ??????????
})

-----------------------
--The Arcway Trash
-----------------------
L = DBM:GetModLocalization("ArcwayTrash")

L:SetGeneralLocalization({
	name =	"The Arcway Trash"
})

-----------------------
-- <<<Court of Stars>>> --
-----------------------
-----------------------
-- Patrol Captain Gerdo --
-----------------------
L= DBM:GetModLocalization(1718)

-----------------------
-- Talixae Flamewreath --
-----------------------
L= DBM:GetModLocalization(1719)

-----------------------
-- Advisor Melandrus --
-----------------------
L= DBM:GetModLocalization(1720)

-----------------------
--Court of Stars Trash
-----------------------
L = DBM:GetModLocalization("CoSTrash")

L:SetGeneralLocalization({
	name =	"Court of Stars Trash"
})

L:SetWarningLocalization({
	warnSpy = "Spy detected"
})

L:SetOptionLocalization({
	warnSpy = "Special warning when a spy is detected",
	SpyHelper = "Help identify the spy",
	timerRoleplay = "Show timer to the start of the battle with Advisor Melandrus"
})

L:SetTimerLocalization({
	timerRoleplay = GUILD_INTEREST_RP
})

L:SetMiscLocalization({
	RolePlayMelan 	= "Must you leave so soon, Grand Magistrix?",
	Gloves1		= "There's a rumor that the spy always wears gloves.",
	Gloves2		= "I heard the spy carefully hides their hands.",
	Gloves3		= "I heard the spy always dons gloves.",
	Gloves4		= "Someone said the spy wears gloves to cover obvious scars.",
	NoGloves1	= "There's a rumor that the spy never has gloves on.",
	NoGloves2	= "You know... I found an extra pair of gloves in the back room. The spy is likely to be bare handed somewhere around here.",
	NoGloves3	= "I heard the spy dislikes wearing gloves.",
	NoGloves4	= "I heard the spy avoids having gloves on, in case some quick actions are needed.",
	Cape1		= "Someone mentioned the spy came in earlier wearing a cape.",
	Cape2		= "I heard the spy enjoys wearing capes.",
	NoCape1		= "I heard the spy dislikes capes and refuses to wear one.",
	NoCape2		= "I heard that the spy left their cape in the palace before coming here.",
	LightVest1	= "The spy definitely prefers the style of light colored vests.",
	LightVest2	= "I heard that the spy is wearing a lighter vest to tonight's party.",
	LightVest3	= "People are saying the spy is not wearing a darker vest tonight.",
	DarkVest1	= "The spy definitely prefers darker clothing.",
	DarkVest2	= "I heard the spy's vest is a dark, rich shade this very night.",
	DarkVest3	= "The spy enjoys darker colored vests... like the night.",
	DarkVest4	= "Rumor has it the spy is avoiding light colored clothing to try and blend in more.",
	Female1		= "They say that the spy is here and she's quite the sight to behold.",
	Female2		= "I hear some woman has been constantly asking about the district...",
	Female3		= "Someone's been saying that our new guest isn't male.",
	Female4		= "A guest saw both her and Elisande arrive together earlier.",
	Male1		= "I heard somewhere that the spy isn't female.",
	Male2		= "I heard the spy is here and he's very good looking.",
	Male3		= "A guest said she saw him entering the manor alongside the Grand Magistrix.",
	Male4		= "One of the musicians said he would not stop asking questions about the district.",
	ShortSleeve1= "I heard the spy wears short sleeves to keep their arms unencumbered.",
	ShortSleeve2= "Someone told me the spy hates wearing long sleeves.",
	ShortSleeve3= "A friend of mine said she saw the outfit the spy was wearing. It did not have long sleeves.",
	ShortSleeve4= "I heard the spy enjoys the cool air and is not wearing long sleeves tonight.",
	LongSleeve1 = "I heard the spy's outfit has long sleeves tonight.",
	LongSleeve2 = "Someone said the spy is covering up their arms with long sleeves tonight.",
	LongSleeve3 = "I just barely caught a glimpse of the spy's long sleeves earlier in the evening.",
	LongSleeve4 = "A friend of mine mentioned the spy has long sleeves on.",
	Potions1	= "I heard the spy brought along potions, I wonder why?",
	Potions2	= "I didn't tell you this... but the spy is masquerading as an alchemist and carrying potions at the belt.",
	Potions3	= "I'm pretty sure the spy has potions at the belt.",
	Potions4	= "I heard the spy brought along some potions... just in case.",
	NoPotions1	= "I heared the spy is not carrying any potions around.",
	NoPotions2	= "A musician told me she saw the spy throw away their last potion and no longer has any left.",
	Book1		= "I heard the spy always has a book of written secrets at the belt.",
	Book2		= "Rumor has is the spy loves to read and always carries around at least one book.",
	Pouch1		= "I heard the spy carries a magical pouch around at all times.",
	Pouch2		= "A friend said the spy loves gold and a belt pouch filled with it.",
	Pouch3		= "I heard the spy's belt pouch is filled with gold to show off extravagance.",
	Pouch4		= "I heard the spy's belt pouch is lined with fancy threading.",
	Found		= "Now now, let's not be hasty",
	--
	Gloves		= "gloves",
	NoGloves	= "no gloves",
	Cape		= "cape",
	Nocape		= "no cape",
	LightVest	= "light vest",
	DarkVest	= "dark vest",
	Female		= "female",
	Male		= "male",
	ShortSleeve = "short sleeves",
	LongSleeve	= "long sleeves",
	Potions		= "potions",
	NoPotions	= "no potions",
	Book		= "book",
	Pouch		= "pouch"
})


-----------------------
-- <<<The Maw of Souls>>> --
-----------------------
-----------------------
-- Ymiron, the Fallen King --
-----------------------
L= DBM:GetModLocalization(1502)

-----------------------
-- Harbaron --
-----------------------
L= DBM:GetModLocalization(1512)

-----------------------
-- Helya --
-----------------------
L= DBM:GetModLocalization(1663)

L:SetWarningLocalization({
	Phase1 = "Phase 2 soon",
	Phase2 = "Phase 2"
})

L:SetOptionLocalization({
	Phase1 = "Warn in advance about phase 2 (on ~85%)",
	Phase2 = "Announce Phase 2"
})

L:SetMiscLocalization({
	TaintofSeaYell = "Taint of the Sea fading on %s. BEWARE!"
})

-----------------------
--Maw of Souls Trash
-----------------------
L = DBM:GetModLocalization("MawTrash")

L:SetGeneralLocalization({
	name =	"Maw of Souls Trash"
})

L:SetOptionLocalization({
	timerRoleplay = "Show timer to the start of the fight with Helya"
})

L:SetTimerLocalization({
	timerRoleplay = GUILD_INTEREST_RP
})

L:SetMiscLocalization({
	Helya = "You ALL will regret trespassing in my realm."
})

-----------------------
-- <<<Assault Violet Hold>>> --
-----------------------
-----------------------
-- Mindflayer Kaahrj --
-----------------------
L= DBM:GetModLocalization(1686)

-----------------------
-- Millificent Manastorm --
-----------------------
L= DBM:GetModLocalization(1688)

-----------------------
-- Festerface --
-----------------------
L= DBM:GetModLocalization(1693)

-----------------------
-- Shivermaw --
-----------------------
L= DBM:GetModLocalization(1694)

-----------------------
-- Blood-Princess Thal'ena --
-----------------------
L= DBM:GetModLocalization(1702)

-----------------------
-- Anub'esset --
-----------------------
L= DBM:GetModLocalization(1696)

-----------------------
-- Sael'orn --
-----------------------
L= DBM:GetModLocalization(1697)

-----------------------
-- Fel Lord Betrug --
-----------------------
L= DBM:GetModLocalization(1711)

-----------------------
--Assault Violet Hold Trash
-----------------------
L = DBM:GetModLocalization("AVHTrash")

L:SetGeneralLocalization({
	name =	"Assault Violet Hold Trash"
})

L:SetWarningLocalization({
	WarningPortalSoon	= "New portal soon",
	WarningPortalNow	= "Portal #%d",
	WarningBossNow		= "Boss incoming"
})

L:SetTimerLocalization({
	TimerPortal			= "Portal CD"
})

L:SetOptionLocalization({
	WarningPortalNow		= "Show warning for new portal",
	WarningPortalSoon		= "Show pre-warning for new portal",
	WarningBossNow			= "Show warning for boss incoming",
	TimerPortal				= "Show timer for next portal (after Boss)"
})

L:SetMiscLocalization({
	Malgath		=	"Lord Malgath"
})

-----------------------
-- <<<Vault of the Wardens>>> --
-----------------------
-----------------------
-- Tirathon Saltheril --
-----------------------
L= DBM:GetModLocalization(1467)

-----------------------
-- Inquisitor Tormentorum --
-----------------------
L= DBM:GetModLocalization(1695)

L:SetOptionLocalization({
	lookSphere = "Show special warning \"look at the Sphere\" when you target $spell:212564"
})

L:SetMiscLocalization({
	lookSphere = "the Sphere"
})

-----------------------
-- Ash'golm --
-----------------------
L= DBM:GetModLocalization(1468)

L:SetWarningLocalization({
	Countermeasure = "Countermeasure is ready!"
})

L:SetOptionLocalization({
	Countermeasure = "Show warning for $spell:195189"
})

-----------------------
-- Glazer --
-----------------------
L= DBM:GetModLocalization(1469)

-----------------------
-- Cordana --
-----------------------
L= DBM:GetModLocalization(1470)

L:SetWarningLocalization({
	Phase1 = "Phase 2 soon",
	Phase2 = "Phase 2"
})

L:SetOptionLocalization({
	Phase1 = "Warn in advance about phase 2 (on ~46%, Mythic+ only)",
	Phase2 = "Announce Phase 2"
})

-----------------------
--Vault of Wardens Trash
-----------------------
L = DBM:GetModLocalization("VoWTrash")

L:SetGeneralLocalization({
	name =	"Vault of Wardens Trash"
})

L:SetTimerLocalization({
	timerRoleplay = GUILD_INTEREST_RP
})

L:SetOptionLocalization({
	lookSphere = "Show special warning \"look at the Sphere\" when you target $spell:212564",
	timerRoleplay = "Show timer to the start of the fight with Kordana"
})

L:SetMiscLocalization({
	lookSphere = "look at the Sphere",
	RoleRP = "How utterly predictable! I knew that you would come."
})

-----------------------
-- <<<Return To Karazhan>>> --
-----------------------
-----------------------
-- Maiden of Virtue --
-----------------------
L= DBM:GetModLocalization(1825)

L:SetOptionLocalization{
	AnnounceHolyBolt = "Announce the players on whom $spell:227809 in chat"
}

L:SetMiscLocalization{
	HolyBolt = "Holy Bolt is used on: %s"
}

-----------------------
-- Opera Hall: Wikket  --
-----------------------
L= DBM:GetModLocalization(1820)

-----------------------
-- Opera Hall: Westfall Story --
-----------------------
L= DBM:GetModLocalization(1826)

L:SetWarningLocalization({
	Phase = "Phase 2 soon",
	Phase2 = "Phase 2",
	Phase3 = "Phase 3 soon",
	Phase4 = "Phase 3"
})

L:SetOptionLocalization({
	Phase = "Warn in advance about phase 2 (on ~56% Toe Knee, Mythic+ only)",
	Phase2 = "Announce Phase 2",
	Phase3 = "Warn in advance about phase 2 (on ~56% Mrrgria, Mythic+ only)",
	Phase4 = "Announce Phase 3"
})

L:SetMiscLocalization({
	Tonny = "Wanna go for a spin?",
	Phase2 = "It's you and me against the world, baby!"
})

-----------------------
-- Opera Hall: Beautiful Beast  --
-----------------------
L= DBM:GetModLocalization(1827)

-----------------------
-- Attumen the Huntsman --
-----------------------
L= DBM:GetModLocalization(1835)

L:SetWarningLocalization({
	Phase = "Phase 2 soon",
	Phase1 = "Phase 2",
	Phase2 = "Phase 3 soon",
	Phase3 = "Phase 3"
})

L:SetOptionLocalization({
	Phase = "Warn in advance about phase 2 (on ~56%, Mythic+ only)",
	Phase1 = "Announce Phase 2",
	Phase2 = "Warn in advance about phase 3 (on ~10%, Mythic+ only)",
	Phase3 = "Announce Phase 3"
})

L:SetMiscLocalization({
	Perephase2 = "Time to face my quarry toe-to-toe!",
	Perephase1 = "We ride, Midnight! To victory!"
})

-----------------------
-- Moroes --
-----------------------
L= DBM:GetModLocalization(1837)

-----------------------
-- The Curator --
-----------------------
L= DBM:GetModLocalization(1836)

-----------------------
-- Shade of Medivh --
-----------------------
L= DBM:GetModLocalization(1817)

-----------------------
-- Mana Devourer --
-----------------------
L= DBM:GetModLocalization(1818)

-----------------------
-- Viz'aduum the Watcher --
-----------------------
L= DBM:GetModLocalization(1838)

L:SetWarningLocalization({
	Phase1 = "Phase 2 soon",
	Phase2 = "Phase 3 soon"
})

L:SetOptionLocalization({
	Phase1 = "Warn in advance about phase 2 (on ~68%, Mythic+ only)",
	Phase2 = "Warn in advance about phase 2 (on ~35%, Mythic+ only)"
})

-----------------------
--Nightbane
-----------------------
L = DBM:GetModLocalization("Nightbane")

L:SetGeneralLocalization({
	name = "Nightbane"
})

-----------------------
--Return To Karazhan Trash
-----------------------
L = DBM:GetModLocalization("RTKTrash")

L:SetGeneralLocalization({
	name = "Return To Karazhan Trash"
})

L:SetOptionLocalization({
	timerRoleplay = "Show timer to the start of the show \"Beautiful Beast\"",
	timerRoleplay2 = "Show timer to the start of the show \"Westfall Story\"",
	timerRoleplay3 = "Show timer to the start of the show \"Wikket\"",
	OperaActivation = "Activate show in Opera in 1 click"
})

L:SetTimerLocalization({
	timerRoleplay = "\"Beautiful Beast\"",
	timerRoleplay2 = "\"Westfall Story\"",
	timerRoleplay3 = "\"Wikket\""
})

L:SetMiscLocalization({
	Beauty = "Good evening, ladies and gentlemen. We proudly welcome you to this evening's feature presentation!",
	Westfall = "Ladies and gentlemen, welcome to this evening's feature presentation!",
	Wikket = "Welcome, ladies and gentlemen, to our--OOF!",
	ReinvigoratedYell = "Reinvigorated on %s!",
	speedRun = "The strange chill of a dark presence winds through the air..."
})

-----------------------
-- <<<Cathedral of Eternal Night >>> --
-----------------------
-----------------------
-- Agronox --
-----------------------
L= DBM:GetModLocalization(1905)

-----------------------
-- Trashbite the Scornful  --
-----------------------
L= DBM:GetModLocalization(1906)

L:SetOptionLocalization({
	bookCase = "Show special warning \"Run behind the bookcase\" when you target $spell:237726"
})

L:SetMiscLocalization({
	bookCase = "the bookcase!"
})

-----------------------
-- Domatrax --
-----------------------
L= DBM:GetModLocalization(1904)

-----------------------
-- Mephistroth  --
-----------------------
L= DBM:GetModLocalization(1878)

-----------------------
--Cathedral of Eternal Night Trash
-----------------------
L = DBM:GetModLocalization("CoENTrash")

L:SetGeneralLocalization({
	name =	"Cathedral of Eternal Night Trash"--Maybe something shorter?
})

-----------------------
-- <<<Seat of Triumvirate >>> --
-----------------------
-----------------------
-- Zuraal --
-----------------------
L= DBM:GetModLocalization(1979)

L:SetWarningLocalization({
	Phase2 = "Void Tear ready!", --Void Tear
	UmbraShift = "Umbra Shift on you - destroy the enemies"
})

L:SetOptionLocalization({
	Phase2 = "Show special warning when $spell:244621 ready to use",
	UmbraShift = "Show special warning \"destroy the enemies\" when you target $spell:244433"
})

-----------------------
-- Saprish  --
-----------------------
L= DBM:GetModLocalization(1980)

-----------------------
-- Viceroy Nezhar --
-----------------------
L= DBM:GetModLocalization(1981)

-----------------------
-- L'ura  --
-----------------------
L= DBM:GetModLocalization(1982)
--[[
L:SetMiscLocalization({
	Backlash = "Take her shadow for your own, Alleria! Do as I trained you!"
})]]

-----------------------
--Seat of Triumvirate Trash
-----------------------
L = DBM:GetModLocalization("SoTTrash")

L:SetGeneralLocalization({
	name =	"Seat of Triumvirate Trash"
})

L:SetOptionLocalization({
	timerRoleplay = "Show timer for roleplay duration",
	timerRoleplay2 = "Show timer to the start of the boss fight",
	AlleriaActivation = "Activate role-playing with Alleria Windrunner in 1 click"
})

L:SetTimerLocalization({
	timerRoleplay = GUILD_INTEREST_RP,
	timerRoleplay2 = "The start of the battle"
})

L:SetMiscLocalization({
	RP1 = "The Shadowguard is building up its presence near the temple.",
	RP2 = "I sense great despair emanating from within. L'ura...",
	RP3 = "Such chaos... such anguish. I have never sensed anything like it before."
})
