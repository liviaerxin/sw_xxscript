Pattern = require("model.Pattern")

local width, height = getScreenSize()
FullScreen = Rect(0, 0, width - 1 , height - 1, nil, false)

-------------------------------------- Hall Scene ------------------------------------------------------
ProfileRect = Rect(22, 37, 345, 106, Pattern("22|37|0xc7a664,345|106|0xa88342,77|16|0xbc9850,345|30|0xd9b976,101|96|0x996822",
95, 0, 0, 0), false)

BattleHallRect = Rect(682, 627, 757, 691, Pattern("682|627|0xdbab45,757|691|0xca993a,693|613|0xffeedd,745|612|0xddccaa,707|655|0xe4bf00,752|662|0xfab200",
95, 0, 0, 0), false)

CommunityHallRect = Rect(1053, 622, 1126, 688, Pattern("1053|622|0xedd55e,1126|688|0xffffdd,1091|600|0x22333b,1070|632|0xfedd99,1117|637|0x354844",
95, 0, 0, 0), false)


-------------------------------------- Map Scene ------------------------------------------------------
WingMapRect = Rect(57, 33, 77, 45, Pattern("57|33|0xdfdddd,77|45|0xedf0f0,78|13|0xe8eef2,65|33|0xe0e3db,80|32|0xffffff",
95, 0, 0, 0), false)

FlashMapHallRect = Rect(255, 21, 268, 38, Pattern("255|21|0xf9f9ce,268|38|0xc58b2b,265|15|0xfcfbcc,261|28|0xf8ce66,257|45|0xdfaf4a",
95, 0, 0, 0), false)

BackMapRect = Rect(1180, 640, 1240, 700, Pattern("1180|640|0xd9b855,1240|700|0xc49943,1228|655|0x1f160a,1225|672|0x432f15,1191|672|0x3a2812,1201|663|0x1b1308,1202|681|0x442f15",
95, 0, 0, 0), false)

ArenaMapRect = Rect(80, 137, 208, 206, Pattern("80|137|0x4d5041,208|206|0x6b673c,125|102|0xf6f8f6,185|137|0xf5f3f5,133|148|0xd6c001,133|190|0xced3ce",
95, 0, 0, 0), true)

CairosDungeonMapRect = Rect(566, 557, 848, 680, Pattern("566|557|0x745d32,848|680|0xbda463,671|582|0x2e160a,756|552|0xc5a777,772|632|0x634d29,596|661|0xaf5c2f",
95, 0, 0, 0), true)

LiveArenaRect = Rect(286, 167, 578, 543, Pattern("286|167|0x004369,578|543|0x14232b,386|160|0x37a3ba,475|173|0x1975a1,433|410|0x06377d,391|412|0xffffd6,427|290|0xd4dbd3",
95, 0, 0, 0), false)

WorldArenaRect = Rect(712, 171, 975, 540, Pattern("712|171|0x7f2f0a,975|540|0x3a2011,772|165|0xa03c01,853|178|0xffffec,915|166|0x9e3e02,851|390|0xe54807,823|431|0xfffabe",
95, 0, 0, 0), false)


-------------------------------------- Arena Scene ---------------------------------------------------------
BattleArenaRect = Rect(991, 265, 1210, 330, Pattern("991|265|0xec8810,1210|330|0xa14815,1071|290|0xfffac9,1105|291|0xfffac9,1125|305|0xfffac9,1143|301|0xfffac9",
95, 0, 0, 0), false)

UnclearedRivalArenaRect = Rect(985, 385, 1215, 456, Pattern("985|385|0xb4da0b,1215|456|0x5e8104,1228|356|0xe3c2c2,1246|395|0xab4848,1215|396|0x8e0606",
95, 0, 0, 0), false)

BackArenaRect = Rect(1181, 630, 1251, 688, Pattern("1181|630|0xddaa55,1251|688|0xcc9d46,1227|621|0xaabb0a,1230|648|0xb7cf16,1201|652|0x99bb00",
95, 0, 0, 0), false)

ArenaListRect = Rect(112, 42, 1138, 651, Pattern("112|42|0x6e6951,1138|651|0xc6a464,636|93|0xf8f0e0,1130|108|0xf4ecdc,733|637|0x3d2c21,523|96|0xbc9b5d,705|103|0xdfd8ca",
95, 0, 0, 0), false)

MatchUpNotChooseRect = Rect(112, 42, 1138, 651, Pattern("151|148|0x69503d,270|187|0x573d2f,160|158|0x372518,216|157|0x342217,235|166|0x352217,255|182|0x2c1b10",
95, 0, 0, 0), false)

RivalChooseRect = Rect(112, 42, 1138, 651, Pattern("150|231|0x917122,276|272|0x7f5e1a,190|245|0xfffe85,203|251|0xfffe85,223|250|0xeeea7a,235|243|0xf5f27e",
95, 0, 0, 0), false)

BackArenaListRect = Rect(1108, 90, 1141, 126, Pattern("1108|90|0x4c3710,1141|126|0x4c3712,1122|102|0xf7efdf,1136|101|0xece4d4,1136|121|0xf8f0df,1121|118|0xe2dac8",
95, 0, 0, 0), false)

LoadingRect = Rect(150, 657, 1126, 675, Pattern("150|657|0x7e5a00,1126|675|0x725100,1128|657|0x664900,1147|663|0x7b5800,131|667|0x7a5700,150|678|0x735200",
95, 0, 0, 0), false)

-------------------------------------- Cairos Dungeon Scene---------------------------------------------------
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
local treasureBoxPattern = Pattern("515|297|0xf7f3b2|80,762|546|0xffffe8|80,731|302|0xffffd2|80,795|398|0xffffce|80,468|468|0xffffcf|80",
95, 0, 0, 0)
TreasureBoxRect = Rect(515, 297, 762, 546, treasureBoxPattern, false)

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

PurchaseYesRect = Rect(453, 419, 606, 463, Pattern("453|419|0xdeba60,606|463|0xb6862c,507|435|0xf8e9ad,518|435|0xf8e9ad,511|449|0xdecd94,548|453|0xf8e9ad,440|269|0xf8e9ad,532|285|0xf8e9ad,569|278|0xf8e9ad",
95, 0, 0, 0), false)

-- Collect In Gift Box
local collectGiftBoxPattern = Pattern("756|238|0xc6a463,863|277|0x8f6030,593|125|0xe5ddce,628|128|0xf4eedf,663|133|0xfcf7e8,767|187|0xf7cd67",
95, 0, 0, 0)
CollectGiftBoxRect = Rect(756, 238, 863, 277, collectGiftBoxPattern, false)

-- Back From Gift Box
local backGiftBoxPattern = Pattern("902|117|0x4e3911,936|153|0x493612,916|127|0xd0c6b4,930|131|0xf3ebdb,928|147|0xf6eede,913|148|0xd7cdbb,921|141|0xf7efdf",
95, 0, 0, 0)
BackGiftBoxRect = Rect(902, 117, 936, 153, backGiftBoxPattern, false)

-- Revive
ReviveRect = Rect(320, 435, 586, 506, Pattern("320|435|0xb8955f,586|506|0xb7965d,376|460|0xffe9f3,377|467|0xde1f4f,386|470|0x88082c,490|471|0xf8e9ad,521|476|0xe8d89e,537|480|0xf8e9ad",
95, 0, 0, 0), false)

-- Defeated
DefeatedRect = Rect(423, 92, 843, 137, Pattern("423|92|0xffff90,843|137|0x8eb033,457|96|0xffff34,510|93|0xffff4f,823|95|0xffff32,812|131|0xa5bf37",
95, 0, 0, 0), false)

-- Prepare
PrepareRect = Rect(213, 357, 573, 435, Pattern("213|357|0xb28f58,573|435|0xb59562,330|380|0xf8e9ad,350|383|0xf8e9ad,395|392|0xf8e9ad,430|395|0xc6b47f",
95, 0, 0, 0), false)
