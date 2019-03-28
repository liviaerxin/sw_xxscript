Pattern = require("model.Pattern")

------ Dungeon
local dungeonListPattern = Pattern("160|200|0x4f382b,470|660|0x4f382b,533|65|0xf8f0e0,630|65|0xf8f0e0,737|63|0xf8f0e0",
95, 0, 0, 0)
DungeonListRect = Rect(160, 200, 470, 660, dungeonListPattern, false)

local dungeonBattlePattern = Pattern("530|190|0x2a2019,1140|680|0x553510,532|65|0xf8f0e0,631|63|0xf8f0e0,746|70|0xe5ddce",
95, 0, 0, 0)
DungeonBattleRect = Rect(530, 190, 1140, 680, dungeonBattlePattern, false)

-- Giant Keep
local giantKeepPattern = Pattern("200|230|0xd6a34d,440|300|0xc89e55,240|247|0xfe2222,205|262|0xf4725f,212|293|0x1c181b",
95, 0, 0, 0)
GiantKeepRect = Rect(200, 230, 440, 300, giantKeepPattern, true)

-- Dragon Lair
local dragonLairPattern = Pattern("190|350|0xb1883d,430|410|0xcaa15a,221|356|0x015ea7,258|360|0x233d5d,225|388|0x19639f",
95, 0, 0, 0)
DragonLairRect = Rect(190, 350, 430, 410, dragonLairPattern, true)

-- Necropolis
local necropolisPattern = Pattern("200|460|0x615745,460|510|0xd2ab63,223|470|0x3e2348,283|478|0x473639,226|510|0x334147",
95, 0, 0, 0)
NecropolisRect = Rect(200, 460, 460, 510, necropolisPattern, true)

-- B10
local b10BattleButtonPattern = Pattern("1020|590|0xd9b457,1100|650|0xaf7c22,1043|598|0x3d2e1d,1028|637|0xf8e9ad,728|595|0xf8f0cf",
95, 0, 0, 0)
B10BattleButtonRect = Rect(1020, 590, 1100, 650, b10BattleButtonPattern, true)

-- B9
local b9BattleButtonPattern = Pattern("1025|474|0xdbb65a,1098|539|0xaf7a20,1080|488|0xcdc3bc,702|496|0x9e9984,710|486|0xeee6c6",
100, 0, 0, 0)
B9BattleButtonRect = Rect(1025, 474, 1098, 539, b9BattleButtonPattern, true)

-- Start Battle
local startBattlePattern = Pattern("1000|470|0xdeb960,1160|550|0xb9892f,1060|472|0x30241c,1097|484|0xfdfdfd,1016|531|0xdbce99,1139|528|0xeee0a6",
95, 0, 0, 0)
StartBattleRect = Rect(1000, 470, 1160, 550, startBattlePattern, false)

-- Gear
local gearPattern = Pattern("16|643|0xffffff,80|700|0xffffff,46|655|0xffffff,66|672|0xffffff,47|688|0xffffff",
95, 0, 0, 0)
GearRect = Rect(16, 643, 80, 700, gearPattern, false)

-- SpeedX3
local speedX3Pattern = Pattern("112|642|0xffffff,172|700|0xffffff,126|670|0xffffff,153|662|0xffffff,158|682|0xffffff",
95, 0, 0, 0)
SpeedX3Rect = Rect(112, 642, 172, 700, speedX3Pattern, false)

-- Pause
local pausePattern = Pattern("204|643|0xffffff,268|700|0xffffff,225|660|0xffffff,245|661|0xffffff,245|683|0xffffff",
95, 0, 0, 0)
PauseRect = Rect(204, 643, 268, 700, pausePattern, false)

-- Play
local playPattern = Pattern("204|643|0xffffff,268|700|0xffffff,225|655|0xffffff,246|671|0xffffff,227|683|0xffffff,233|672|0xffffff",
95, 0, 0, 0)
PlayRect = Rect(1000, 470, 1160, 550, playPattern, false)

-- Time
local timePattern = Pattern("1123|16|0xf8eaab,1158|28|0xdfb128,1141|17|0xf2e299,1145|27|0xdcb227,1160|22|0xf1d448",
95, 0, 0, 0)
TimeRect = Rect(1123, 16, 1158, 28, timePattern, false)

-- Victory
local victoryPattern = Pattern("452|96|0xffff34,798|133|0xffc20c,616|95|0xffff33,722|130|0xffc810,758|96|0xffff34",
95, 0, 0, 0)
VictoryRect = Rect(452, 96, 798, 133, victoryPattern, false)

-- FlashInVictory
local flashInVictoryPattern = Pattern("642|337|0x2c1e09,681|393|0x2b1e09,666|337|0xfcfcd0,660|358|0xf7cd65,656|383|0xc88d2d",
95, 0, 0, 0)
FlashInVictoryRect = Rect(642, 337, 681, 393, flashInVictoryPattern, false)

-- TreasureBox
local treasureBoxPattern = Pattern("506|307|0xffffff,765|543|0xffffff,685|305|0xffffff,808|415|0xffffff,588|553|0xffffff",
95, 0, 0, 0)
TreasureBoxRect = Rect(506, 307, 765, 543, treasureBoxPattern, false)

-- OK Button
local oKButtonPattern = Pattern("574|575|0xcea259,706|622|0xb77f3c,631|589|0xf4e5a9,655|589|0xf4e5a9,655|604|0xf4e5a9",
95, 0, 0, 0)
OKButtonRect = Rect(574, 575, 706, 622, oKButtonPattern, false)

-- Get Button
local getButtonPattern = Pattern("687|560|0xcfa258,815|609|0xb47b38,729|576|0xf4e5a9,754|579|0xf1e2a6,766|579|0xf4e5a9",
95, 0, 0, 0)
GetButtonRect = Rect(687, 560, 815, 609, getButtonPattern, false)

-- Sell Button
local sellButtonPattern = Pattern("459|550|0xd7b16c,601|609|0xb47b38,512|559|0x533810,550|556|0x533810,550|575|0x533810",
95, 0, 1, 0)
SellButtonRect = Rect(459, 550, 601, 609, sellButtonPattern, false)

-- Sell Yes Button
local sellYesButtonPattern = Pattern("463|410|0xdebc62,592|461|0xb7872d,504|427|0xf8e9ad,533|436|0xf8e9ad,551|443|0xf8e9ad,634|252|0xe2c582,646|247|0xe2c582",
95, 0, 1, 0)
SellYesButtonRect = Rect(463, 410, 592, 461, sellYesButtonPattern, false)

-- Replay
local replayPattern = Pattern("219|346|0xaf8e5f,572|435|0xb59561,338|378|0xf8e9ad,392|377|0xf8e9ad,417|403|0xf8e9ad",
95, 0, 1, 0)
ReplayRect = Rect(219, 346, 572, 435, replayPattern, false)

-- Gift Box
local giftBoxButtonPattern = Pattern("678|420|0xe2bf67,838|475|0xb37f25,716|438|0xdecd94,741|443|0xf8e9ad,807|447|0xd6c58d",
95, 0, 1, 0)
GiftBoxButtonRect = Rect(678, 420, 838, 475, giftBoxButtonPattern, false)

-- Shop Button
local shopButtonPattern = Pattern("432|418|0xe3c471,588|471|0xbc8c34,491|436|0xcbb983,508|441|0xf8e9ad,540|457|0xf8e9ad",
95, 0, 1, 0)
ShopButtonRect = Rect(432, 418, 588, 471, shopButtonPattern, false)

-- Crystal Buy Energy
local crystalEnergyPattern = Pattern("441|223|0xf7ecc2,636|538|0x7e5b2d,530|303|0xffdd66,561|432|0x8b2f07,507|518|0xdc1c4c",
95, 0, 0, 0)
CrystalEnergyRect = Rect(441, 223, 636, 538, crystalEnergyPattern, false)

-- Collect In Gift Box
local collectGiftBoxPattern = Pattern("756|238|0xc6a463,863|277|0x8f6030,593|125|0xe5ddce,628|128|0xf4eedf,663|133|0xfcf7e8,767|187|0xf7cd67",
95, 0, 0, 0)
CollectGiftBoxRect = Rect(756, 238, 863, 277, collectGiftBoxPattern, false)

-- Back From Gift Box
local backGiftBoxPattern = Pattern("902|117|0x4e3911,936|153|0x493612,916|127|0xd0c6b4,930|131|0xf3ebdb,928|147|0xf6eede,913|148|0xd7cdbb,921|141|0xf7efdf",
95, 0, 0, 0)
BackGiftBoxRect = Rect(902, 117, 936, 153, backGiftBoxPattern, false)
