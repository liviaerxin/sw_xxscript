Pattern = require("Pattern")

local width, height = getScreenSize()
FullScreen = Rect(0, 0, height - 1 , width - 1, nil, false)

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
local playPattern = Pattern("205|642|0xffffff,266|702|0xffffff,267|645|0xffffff,207|702|0xffffff,232|675|0xffffff,245|673|0xffffff,233|665|0xffffff",
95, 0, 0, 0)
PlayRect = Rect(205, 642, 266, 702, playPattern, false)

-- Time
local timePattern = Pattern("1123|16|0xf8eaab,1158|28|0xdfb128,1141|17|0xf2e299,1145|27|0xdcb227,1160|22|0xf1d448",
95, 0, 0, 0)
TimeRect = Rect(1123, 16, 1158, 28, timePattern, false)

-- TreasureBox
local treasureBoxPattern = Pattern("515|297|0xf7f3b2|80,762|546|0xffffe8|80,731|302|0xffffd2|80,795|398|0xffffce|80,468|468|0xffffcf|80",
95, 0, 0, 0)
TreasureBoxRect = Rect(515, 297, 762, 546, treasureBoxPattern, false)

-- OK Button
local oKButtonPattern = Pattern("592|578|0xcda059,692|623|0xb67d3b,622|598|0xf4e5a9,631|592|0x533810,645|591|0xf4e5a9,656|590|0xe9d99e,656|608|0xf4e5a9,643|607|0xf4e5a9,630|608|0xf4e5a9",
95, 0, 0, 0)
OKButtonRect = Rect(592, 578, 692, 623, oKButtonPattern, true)

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
ReplayRect = Rect(335, 377, 462, 420, Pattern("335|377|0xf8e9ad,462|420|0x1e0703,343|378|0xf8e9ad,345|388|0xf8e9ad,347|396|0xf8e9ad,336|396|0xf8e9ad,413|385|0xeadaa0,422|387|0xf8e9ad,417|402|0xf8e9ad",
95, 0, 0, 0), false)

-- Gift Box
local giftBoxButtonPattern = Pattern("678|420|0xe2bf67,838|475|0xb37f25,716|438|0xdecd94,741|443|0xf8e9ad,807|447|0xd6c58d",
95, 0, 1, 0)
GiftBoxButtonRect = Rect(678, 420, 838, 475, giftBoxButtonPattern, false)

-- GiftDisabledBox
GiftDisabledBox = Rect(678, 425, 836, 470, Pattern("687|425|0x6e5a2c,836|470|0x5e4519,725|442|0x7c7456,743|448|0x776f52,811|456|0x7c7456",
95, 0, 0, 0), false)

-- Shop Button
local shopButtonPattern = Pattern("432|418|0xe3c471,588|471|0xbc8c34,491|436|0xcbb983,508|441|0xf8e9ad,540|457|0xf8e9ad",
95, 0, 1, 0)
ShopButtonRect = Rect(432, 418, 588, 471, shopButtonPattern, false)

-- Crystal Buy Energy
local crystalEnergyPattern = Pattern("441|223|0xf7ecc2,636|538|0x7e5b2d,530|303|0xffdd66,561|432|0x8b2f07,507|518|0xdc1c4c",
95, 0, 0, 0)
CrystalEnergyRect = Rect(441, 223, 636, 538, crystalEnergyPattern, false)

-- Purchase Yes
PurchaseYesRect = Rect(453, 419, 606, 463, Pattern("453|419|0xdeba60,606|463|0xb6862c,507|435|0xf8e9ad,518|435|0xf8e9ad,511|449|0xdecd94,548|453|0xf8e9ad,440|269|0xf8e9ad,532|285|0xf8e9ad,569|278|0xf8e9ad",
95, 0, 0, 0), false)

-- Purchase Ok
PurchaseOkRect = Rect(578, 414, 709, 458, Pattern("578|414|0xdbb559,709|458|0xb9882f,623|429|0xf8e9ad,645|430|0xf8e9ad,656|429|0xf7e8ac,495|271|0xe2c582,776|269|0xe2c582",
95, 0, 0, 0), false)

-- Purchase Close
PurchaseCloseRect = Rect(581, 603, 698, 642, Pattern("581|603|0xd1a55b,698|642|0xbb8441,606|620|0xf8f0cf,612|613|0xf1e8c7,618|618|0xf8f0cf,625|613|0xf8f0cf,640|620|0xf8f0cf,652|618|0xe5dbb9,665|625|0xf8f0cf",
95, 0, 0, 0), false)

-- Collect In Gift Box
local collectGiftBoxPattern = Pattern("756|238|0xc6a463,863|277|0x8f6030,593|125|0xe5ddce,628|128|0xf4eedf,663|133|0xfcf7e8,767|187|0xf7cd67",
95, 0, 0, 0)
CollectGiftBoxRect = Rect(756, 238, 863, 277, collectGiftBoxPattern, false)

-- Back From Gift Box
local backGiftBoxPattern = Pattern("902|117|0x4e3911,936|153|0x493612,916|127|0xd0c6b4,930|131|0xf3ebdb,928|147|0xf6eede,913|148|0xd7cdbb,921|141|0xf7efdf",
95, 0, 0, 0)
BackGiftBoxRect = Rect(902, 117, 936, 153, backGiftBoxPattern, false)


---------------------------------------------- Common ---------------------------------------

-- loading
LoadingRect = Rect(150, 657, 1126, 675, Pattern("150|657|0x7e5a00,1126|675|0x725100,1128|657|0x664900,1147|663|0x7b5800,131|667|0x7a5700,150|678|0x735200",
95, 0, 0, 0), false)

-- Start Battle
StartBattleRect = Rect(996, 475, 1167, 547, Pattern("996|475|0xdbb458,1167|547|0xbf8e34,1006|522|0xf8e9ad,1026|531|0xdbce99,1065|526|0xf7e8ac,1082|521|0xf8e9ad,1082|538|0xa49a72,1157|532|0xd3c793,1140|523|0xf8e9ad",
95, 0, 0, 0), true)

-- Victory
VictoryRect = Rect(452, 96, 798, 133, Pattern("452|96|0xffff34,798|133|0xffc20c,616|95|0xffff33,722|130|0xffc810,758|96|0xffff34",
95, 0, 0, 0), true)

-- FlashInVictory
FlashInVictoryRect = Rect(642, 337, 681, 393, Pattern("642|337|0x2c1e09,681|393|0x2b1e09,666|337|0xfcfcd0,660|358|0xf7cd65,656|383|0xc88d2d",
95, 0, 0, 0), true)

-- Revive
ReviveRect = Rect(320, 435, 586, 506, Pattern("320|435|0xb8955f,586|506|0xb7965d,376|460|0xffe9f3,377|467|0xde1f4f,386|470|0x88082c,490|471|0xf8e9ad,521|476|0xe8d89e,537|480|0xf8e9ad",
95, 0, 0, 0), true)

-- No
NoRect = Rect(320, 435, 586, 506, Pattern("805|457|0xecdca2,843|478|0xf8e9ad,805|477|0xf8e9ad,813|470|0xf8e9ad,821|458|0xf8e9ad,821|480|0xf8e9ad,830|470|0xf8e9ad,837|458|0xf8e9ad,845|468|0xf8e9ad,837|480|0xf8e9ad",
95, 0, 0, 0), true)

-- Defeated
DefeatedRect = Rect(423, 92, 843, 137, Pattern("423|92|0xffff90,843|137|0x8eb033,457|96|0xffff34,510|93|0xffff4f,823|95|0xffff32,812|131|0xa5bf37",
95, 0, 0, 0), true)

-- Prepare (need be shrinked)
PrepareRect = Rect(213, 357, 573, 435, Pattern("213|357|0xb28f58,573|435|0xb59562,330|380|0xf8e9ad,350|383|0xf8e9ad,395|392|0xf8e9ad,430|395|0xc6b47f",
95, 0, 0, 0), true)

--  Unstable Network Yes
NetworkYesRect = Rect(466, 413, 588, 457, Pattern("466|413|0xdab559,588|457|0xc19239,503|426|0xf8e9ad,516|427|0xf8e9ad,510|436|0xf8e9ad,508|442|0xaf9b69,380|251|0xe2c582,387|268|0xe2c582,393|251|0xe2c582",
95, 0, 0, 0), true)

-- star 6 rune yellow
Start6RuneYRect = Rect(29, 437, 91, 441, Pattern("29|437|0xe0c759,91|441|0xf7c90b,44|439|0xfdd00c,55|437|0xfdd628,68|438|0xfdd00e,78|437|0xfdd113,82|437|0x50461b,93|437|0xe8c846",
95, 0, 0, 0), true)

-- star 5 rune yellow
Start5RuneYRect = Rect(30, 437, 80, 442, Pattern("30|437|0xf1d861,80|442|0xefbc0a,45|437|0xfdd111,55|439|0xfdd00c,65|439|0xfccf0c,78|438|0xfdd00c,84|437|0x9f7d18,23|436|0x140d07",
95, 0, 0, 0), true)

-- star 6 rune white TODO:
Start6RuneWRect = Rect(29, 437, 91, 441, Pattern("29|437|0xe0c759,91|441|0xf7c90b,44|439|0xfdd00c,55|437|0xfdd628,68|438|0xfdd00e,78|437|0xfdd113,82|437|0x50461b,93|437|0xe8c846",
95, 0, 0, 0), true)

-- star 5 rune white
Start5RuneWRect = Rect(430, 241, 480, 247, Pattern("430|241|0xf6f7f7,480|247|0x78838a,443|242|0xf0f3f2,455|242|0xecefee,465|241|0xf4f6f5,476|242|0xf1f4f3,423|241|0x090804",
95, 0, 0, 0), true)

-- level 40 of monster 
Level40Rect = Rect(95, 650, 108, 665, Pattern("95|650|0xf8f0e0,108|665|0x948c81,91|656|0xf4ecdc,88|661|0xd1cabd,96|661|0xd1cabd,103|657|0xf1e9da,111|650|0xf8f0e0,113|655|0xf8f0e0,113|660|0xdbd4c6,100|661|0x988978",
95, 0, 0, 0), true)

-- Back
BackRect = Rect(1221, 42, 1255, 76, Pattern("1221|42|0x4b3610,1255|76|0x4b3610,1232|52|0xf7efdf,1248|51|0xf6eede,1241|61|0xf8f0e0,1241|63|0xf8f0e0,1232|70|0xf4ebdb,1248|70|0xf8f0e0",
95, 0, 0, 0), true)

---------------------------------------------- Senario Farming Scene ---------------------------------------
FaimonVolcanoListRect = Rect(663, 51, 1253, 678, Pattern("663|51|0xb69557,1253|678|0xb99758,862|48|0xf8f0e0,861|58|0xe7e0d1,852|67|0xa29d93,961|48|0xf8f0e0,970|65|0xb2aca1,975|48|0xf8f0e0,981|60|0xdad3c5",
95, 0, 0, 0), false)

LevelHellRect = Rect(996, 122, 1232, 148, Pattern("996|122|0x743c28,1232|148|0x54180b,1010|131|0xcbea4e,1010|145|0xa8b93e,1017|145|0xa8b93e,1115|127|0xfdf3ca,1115|145|0xfdf3ca,1126|127|0xf1e6be,1127|145|0xfdf3ca,1121|136|0xfdf3ca",
95, 0, 0, 0), false)

Senario1Rect = Rect(688, 202, 1227, 311, Pattern("688|202|0xd0a95f,1227|311|0xd0a95f,705|213|0xf8f0cf,711|210|0xf8f0cf,711|228|0xf8f0cf,723|227|0xf8f0cf,711|222|0xf8f0cf,711|217|0xf8f0cf,711|226|0xf8f0cf,711|213|0xf8f0cf",
95, 0, 0, 0), true)

Senario2Rect = Rect(691, 335, 1230, 438, Pattern("691|335|0xd0a95f,1230|438|0xd0a95f,705|345|0xf8f0cf,710|342|0xf8f0cf,715|345|0xf0e7c6,712|352|0xf3ebca,707|356|0xf8f0cf,707|360|0xf8f0cf,715|360|0xf8f0cf,723|360|0xf4eccb",
95, 0, 0, 0), true)

Senario3Rect = Rect(691, 470, 1228, 572, Pattern("691|470|0xd0a95f,1228|572|0xd0a95f,706|477|0xf8f0cf,710|475|0xe7ddbc,715|480|0xf1e9c8,708|485|0xf8f0cf,715|490|0xf8f0cf,710|493|0xf8f0cf,705|491|0xf8f0cf,723|493|0xf8f0cf",
95, 0, 0, 0), true)

SenarioBattleRect = Rect(1140, 356, 1215, 427, Pattern("1140|356|0xe0bc66,1215|427|0xae791e,1147|411|0xf8e9ad,1147|411|0xf8e9ad,1178|407|0xf8e9ad,1187|407|0xf8e9ad",
95, 0, 0, 0), true)

FriendListRect = Rect(20, 570, 878, 695, Pattern("20|570|0x1c1408,878|695|0x20170a",
95, 0, 0, 0), false)