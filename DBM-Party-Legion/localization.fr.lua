if GetLocale() ~= "frFR" then return end
local L

-----------------------
-- <<<Black Rook Hold>>> --
-----------------------
-----------------------
-- The Amalgam of Souls --
-----------------------
L= DBM:GetModLocalization(1518)

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

-----------------------
--Black Rook Hold Trash
-----------------------
L = DBM:GetModLocalization("BRHTrash")

L:SetGeneralLocalization({
	name =	"Black Rook Hold Trash"
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

-----------------------
-- Dresaron --
-----------------------
L= DBM:GetModLocalization(1656)

-----------------------
-- Shade of Xavius --
-----------------------
L= DBM:GetModLocalization(1657)

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

L:SetWarningLocalization({
	specWarnStaticNova			= "Static Nova - move to land",
	specWarnFocusedLightning	= "Focused Lightning - move to water"
})

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

-----------------------
--Eye of Azshara Trash
-----------------------
L = DBM:GetModLocalization("EoATrash")

L:SetGeneralLocalization({
	name =	"Eye of Azshara Trash"
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

-----------------------
-- God-King Skovald --
-----------------------
L= DBM:GetModLocalization(1488)

-----------------------
-- Odyn --
-----------------------
L= DBM:GetModLocalization(1489)

L:SetMiscLocalization({
	tempestModeMessage		=	"Not tempest sequence: %s. Rechecking in 8 seconds."
})

-----------------------
--Halls of Valor Trash
-----------------------
L = DBM:GetModLocalization("HoVTrash")

L:SetGeneralLocalization({
	name =	"Halls of Valor Trash"
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
	batSpawn		=	"Reinforcements to me! NOW!"
})

-----------------------
-- Nal'tira --
-----------------------
L= DBM:GetModLocalization(1500)

-----------------------
-- Advisor Vandros --
-----------------------
L= DBM:GetModLocalization(1501)

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

L:SetOptionLocalization({
	SpyHelper	= "Help identify the spy"
})

L:SetMiscLocalization({
	Gloves1			= "On m???a racont?? que la taupe portait des gants pour masquer d???affreuses cicatrices.",
	Gloves2			= "On dit que la taupe porte toujours des gants.",
	Gloves3			= "Le bruit court que la taupe porte toujours des gants.",
	Gloves4			= "Il para??t que la taupe prend toujours soin de cacher ses mains.",
	NoGloves1		= "Vous savez??? J???ai trouv?? une paire de gants abandonn??e dans l???arri??re-salle. Il faut croire que la taupe n???en porte pas.",
	NoGloves2		= "J???ai entendu dire que la taupe ??vite de porter des gants, de crainte que cela ne nuise ?? sa dext??rit??.",
	NoGloves3		= "On dit que la taupe d??teste porter des gants.",
	NoGloves4		= "Le bruit court que la taupe ne porte jamais de gants.",
	Cape1			= "Quelqu???un affirme que la taupe portait une cape lors de son passage ici.",
	Cape2			= "On dit que la taupe aime porter des capes.",
	NoCape1			= "Il para??t que la taupe n???aime pas les capes et refuse d???en porter.",
	NoCape2			= "J???ai entendu dire que la taupe avait laiss?? sa cape au palais avant de venir ici.",
	LightVest1		= "On raconte que la taupe ne porte pas de gilet sombre ce soir.",
	LightVest2		= "Il para??t que la taupe porte un gilet clair ce soir.",
	LightVest3		= "La taupe pr??f??re les gilets de couleur claire.",
	DarkVest1		= "La taupe pr??f??re les gilets sombres??? comme la nuit.",
	DarkVest2		= "J???ai entendu dire que la taupe porte un gilet de couleur sombre ce soir.",
	DarkVest3		= "D???apr??s les rumeurs, la taupe ??vite les tenues de couleur claire pour mieux se fondre dans la masse.",
	DarkVest4		= "Une chose est s??re, la taupe pr??f??re les v??tements sombres.",
	Female1			= "Quelqu???un l???a vue arriver en compagnie d?????lisande.",
	Female2			= "Le bruit court que notre h??te ne serait pas un homme.",
	Female3			= "On dit que la taupe est ici et que c???est une vraie beaut??.",
	Female4			= "On me dit qu???une femme ne cesse de poser des questions ?? propos du quartier???",
	Male1			= "?? en croire la rumeur, la taupe ne serait pas une espionne.",
	Male2			= "?? en croire l???un des musiciens, il n???arr??tait pas de poser des questions sur le quartier.",
	Male3			= "Une invit??e l???aurait vu entrer dans le manoir au c??t?? de la grande magistrice.",
	Male4			= "Il para??t que l???espion est ici et qu???il est fort s??duisant, de surcro??t.",
	ShortSleeve1	= "Quelqu???un m???a dit que la taupe d??testait porter des manches longues.",
	ShortSleeve2	= "Une de mes amies pr??tend avoir vu la tenue que porte notre taupe. ?? l???en croire, ce ne serait pas un habit ?? manches longues.",
	ShortSleeve3	= "Il para??t que la taupe porte des manches courtes pour rester plus libre de ses mouvements.",
	ShortSleeve4	= "Il para??t que la taupe aime sentir la caresse du vent sur sa peau et ne porte pas de manches longues ce soir.",
	LongSleeve1 	= "D???apr??s l???un de mes amis, la taupe porterait un habit ?? manches longues.",
	LongSleeve2 	= "Il para??t que la taupe porte une tenue ?? manches longues ce soir.",
	LongSleeve3 	= "J???ai bri??vement entraper??u la taupe dans sa tenue ?? manches longues tout ?? l???heure.",
	LongSleeve4 	= "Quelqu???un m???a dit que les bras de la taupe ??taient dissimul??s par un habit ?? manches longues, ce soir.",
	Potions1		= "La taupe porte des potions ?? la ceinture. J???en mettrais ma main au feu !",
	Potions2		= "??a reste entre nous??? La taupe se fait passer pour un alchimiste et porte des potions ?? sa ceinture.",
	Potions3		= "J???ai entendu dire que la taupe a apport?? quelques potions??? au cas o??.",
	Potions4		= "J???ai entendu dire que la taupe a apport?? quelques potions. Je me demande bien pourquoi.",
	NoPotions1		= "Une musicienne m???a dit avoir vu la taupe jeter sa derni??re potion. Il semblerait donc qu???il ne lui en reste plus.",
	NoPotions2		= "Il para??t que la taupe ne transporte aucune potion.",
	Book1			= "Il para??t que la taupe porte toujours un livre des secrets ?? sa ceinture.",
	Book2			= "Le bruit court que la taupe adore lire et transporte toujours au moins un livre.",
	Pouch1			= "On raconte que la taupe ne se s??pare jamais de sa sacoche magique.",
	Pouch2			= "D???apr??s l???un de mes amis, la taupe aime l???or et les sacoches qui en sont pleines.",
	Pouch3			= "On raconte que la sacoche de la taupe est pleine d???or. Si ??a, ce n???est pas un signe ext??rieur de richesse???",
	Pouch4			= "On raconte que la sacoche de la taupe est bord??e d???une ??l??gante broderie.",
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

-----------------------
--Maw of Souls Trash
-----------------------
L = DBM:GetModLocalization("MawTrash")

L:SetGeneralLocalization({
	name =	"Maw of Souls Trash"
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

-----------------------
-- Ash'golm --
-----------------------
L= DBM:GetModLocalization(1468)

-----------------------
-- Glazer --
-----------------------
L= DBM:GetModLocalization(1469)

-----------------------
-- Cordana --
-----------------------
L= DBM:GetModLocalization(1470)

-----------------------
--Vault of Wardens Trash
-----------------------
L = DBM:GetModLocalization("VoWTrash")

L:SetGeneralLocalization({
	name =	"Vault of Wardens Trash"
})

-----------------------
-- <<<Return To Karazhan>>> --
-----------------------
-----------------------
-- Maiden of Virtue --
-----------------------
L= DBM:GetModLocalization(1825)

-----------------------
-- Opera Hall: Wikket  --
-----------------------
L= DBM:GetModLocalization(1820)

-----------------------
-- Opera Hall: Westfall Story --
-----------------------
L= DBM:GetModLocalization(1826)

-----------------------
-- Opera Hall: Beautiful Beast  --
-----------------------
L= DBM:GetModLocalization(1827)

-----------------------
-- Attumen the Huntsman --
-----------------------
L= DBM:GetModLocalization(1835)

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

-----------------------
--Nightbane
-----------------------
L = DBM:GetModLocalization("Nightbane")

L:SetGeneralLocalization({
	name =	"Nightbane"
})

-----------------------
--Return To Karazhan Trash
-----------------------
L = DBM:GetModLocalization("RTKTrash")

L:SetGeneralLocalization({
	name =	"Return To Karazhan Trash"
})

L:SetMiscLocalization({
	speedRun		=	"The strange chill of a dark presence winds through the air..."
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

