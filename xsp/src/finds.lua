------------------------- miscellaneous find rects functions ----------------------------
--- find Giant's Keep, return a rect or nil
function findGiantKeep()
	local dungeonLeftRect = Rect(160, 200, 470, 660) -- backdrop
	local giantRect = Rect(200, 230, 440, 300, true)
	local x, y = findColor({160, 200, 470, 660}, 
		"200|230|0xd6a34d,440|300|0xc89e55,240|247|0xfe2222,205|262|0xf4725f,212|293|0x1c181b",
		95, 0, 0, 0)
	if x > -1 then
		local rect = giantRect:rectify(x, y)
		print("find Giant's Keep: "..rect:toString())
		return rect
	else
		print("not find Giant's Keep!!!")
		return nil
	end
end

--- find Dragon's Lair, return a rect or nil
function findDragonLair()
	local dungeonLeftRect = Rect(160, 200, 470, 660) -- backdrop
	local dragonRect = Rect(190, 350, 430, 410, true)
	local x, y = findColor({160, 200, 470, 660}, 
		"190|350|0xb1883d,430|410|0xcaa15a,221|356|0x015ea7,258|360|0x233d5d,225|388|0x19639f",
		95, 0, 0, 0)
	if x > -1 then
		local rect = dragonRect:rectify(x, y)
		print("find Dragon Lair: "..rect:toString())
		return rect
	else
		print("not find Dragon Lair!!!")
		return nil
	end
end

--- find Necropolis, return a rect or nil
function findNecropolis()
	local dungeonLeftRect = Rect(160, 200, 470, 660) -- backdrop
	local necropolisRect = Rect(200, 460, 460, 510, true)
	local x, y = findColor({160, 200, 470, 660}, 
		"200|460|0x615745,460|510|0xd2ab63,223|470|0x3e2348,283|478|0x473639,226|510|0x334147",
		95, 0, 0, 0)
	if x > -1 then
		local rect = necropolisRect:rectify(x, y)
		print("find Necropolis: "..rect:toString())
		return rect
	else
		print("not find Necropolis !!!")
		return nil
	end
end

--- find B10 Battle
function findB10Battle()
	local dungeonRightRect= Rect(530, 190, 1140, 680) -- backdrop rect
	local b10BattleRect = Rect(1020, 590, 1100, 650, true)
	local x, y = findColor({530, 190, 1140, 680}, 
		"1020|590|0xd9b457,1100|650|0xaf7c22,1043|598|0x3d2e1d,1028|637|0xf8e9ad,728|595|0xf8f0cf",
		95, 0, 0, 0)
	if x > -1 then
		local rect = b10BattleRect:rectify(x, y)
		print("find B10 Battle: "..rect:toString())
		return rect
	else
		print("not find B10 Battle!!!")
		return nil
	end
end

--- find Start Battle
function findStartBattle()
	-- local backdropRect= Rect(635,580,727,605)
	local startBattleRect = Rect(1000, 470, 1160, 550, false)
	local x, y = findColor({1000, 470, 1160, 550}, 
		"1000|470|0xdeb960,1160|550|0xb9892f,1060|472|0x30241c,1097|484|0xfdfdfd,1016|531|0xdbce99,1139|528|0xeee0a6",
		95, 0, 0, 0)
	if x > -1 then
		local rect = startBattleRect:rectify(x, y)
		print("find Start Battle: "..rect:toString())
		return rect
	else
		print("not find Start Battle!!!")
		return nil
	end
end

--- find Gear
function findGear()
	-- local backdropRect= Rect(635,580,727,605)
	local gearRect = Rect(16, 642, 80, 700, false)
	local x, y = findColor({16, 642, 80, 700}, 
		"0|0|0xffffff,64|58|0xffffff,24|19|0xffffff,45|29|0xffffff,32|45|0xffffff",
		95, 0, 0, 0)
	if x > -1 then
		local rect = gearRect:rectify(x, y)
		rect:shrink(10, 10)
		print("find Gear: "..rect:toString())
		return rect
	else
		print("not find Gear!!!")
		return nil
	end
end

--- find SpeedX3
function findSpeedX3()
	-- local backdropRect= Rect(635,580,727,605)
	local speedX3Rect = Rect(111, 643, 173, 701, false)
	local x, y = findColor({111, 643, 173, 701}, 
		"0|0|0xffffff,61|58|0xffffff,13|24|0xffffff,46|20|0xffffff,38|29|0xffffff",
		95, 0, 0, 0)
	if x > -1 then
		local rect = speedX3Rect:rectify(x, y)
		rect:shrink(10, 10)
		print("find SpeedX3: "..rect:toString())
		return rect
	else
		print("not find SpeedX3!!!")
		return nil
	end
end

--- find Auto
function findAuto()
	-- local backdropRect= Rect(635,580,727,605)
	local autoRect = Rect(205, 643, 267, 699, false)
	local x, y = findColor({205, 643, 267, 699}, 
		"205|643|0xffffff,267|699|0xffffff,224|660|0xffffff,250|660|0xffffff,247|683|0xffffff,224|685|0xffffff",
		95, 0, 0, 0)
	if x > -1 then
		local rect = autoRect:rectify(x, y)
		rect:shrink(10, 10)
		print("find Auto: "..rect:toString())
		return rect
	else
		print("not find Auto!!!")
		return nil
	end
end

--- find Play
function findPlay()
	-- local backdropRect= Rect(635,580,727,605)
	local playRect = Rect(205, 643, 267, 699, false)
	local x, y = findColor({205, 643, 267, 699}, 
		"205|643|0xffffff,267|699|0xffffff,227|659|0xffffff,246|672|0xffffff,225|687|0xffffff,237|678|0xffffff",
		95, 0, 0, 0)
	if x > -1 then
		local rect = playRect:rectify(x, y)
		rect:shrink(10, 10)
		print("find Play: "..rect:toString())
		return rect
	else
		print("not find Play!!!")
		return nil
	end
end

--- find Time
function findTime()
	-- local backdropRect= Rect(635,580,727,605)
	local timeRect = Rect(1123, 16, 1158, 28, false)
	local x, y = findColor({1123, 16, 1158, 28}, 
		"1123|16|0xf8eaab,1158|28|0xdfb128,1141|17|0xf2e299,1145|27|0xdcb227,1160|22|0xf1d448",
		95, 0, 0, 0)
	if x > -1 then
		local rect = timeRect:rectify(x, y)
		print("find Time: "..rect:toString())
		return rect
	else
		print("not find Time!!!")
		return nil
	end
end

--- find Victory
function findVictory()
	-- local backdropRect= Rect(635,580,727,605)
	local victoryRect = Rect(452, 96, 798, 133, false)
	local x, y = findColor({452, 96, 798, 133}, 
		"452|96|0xffff34,798|133|0xffc20c,616|95|0xffff33,722|130|0xffc810,758|96|0xffff34",
		95, 0, 0, 0)
	if x > -1 then
		local rect = victoryRect:rectify(x, y)
		print("find Victory: "..rect:toString())
		return rect
	else
		print("not find Victory!!!")
		return nil
	end
end

--- find FlashInVictory
function findFlashInVictory()
	-- local backdropRect= Rect(635,580,727,605)
	local flashInVictoryRect = Rect(642, 337, 681, 393, false)
	local x, y = findColor({642, 337, 681, 393}, 
		"642|337|0x2c1e09,681|393|0x2b1e09,666|337|0xfcfcd0,660|358|0xf7cd65,656|383|0xc88d2d",
		95, 0, 0, 0)
	if x > -1 then
		local rect = flashInVictoryRect:rectify(x, y)
		print("find Victory: "..rect:toString())
		return rect
	else
		print("not find Victory!!!")
		return nil
	end
end

--- find TreasureBox
function findTreasureBox()
	-- local backdropRect= Rect(635,580,727,605)
	local treasureBoxRect = Rect(525, 286, 770, 546, false)
	local x, y = findColor({525, 286, 770, 546}, 
		"525|286|0xfffff6,770|546|0xffffff,783|308|0xffffff,592|555|0xffffff,451|438|0xffffff",
		95, 0, 0, 0)
	if x > -1 then
		local rect = treasureBoxRect:rectify(x, y)
		print("find TreasureBox: "..rect:toString())
		return rect
	else
		print("not find TreasureBox!!!")
		return nil
	end
end

--- find Ok
function findOk()
	-- local backdropRect= Rect(635,580,727,605)
	local okRect = Rect(574, 575, 706, 622, false)
	local x, y = findColor({574, 575, 706, 622}, 
		"574|575|0xcea259,706|622|0xb77f3c,631|589|0xf4e5a9,655|589|0xf4e5a9,655|604|0xf4e5a9",
		95, 0, 0, 0)
	if x > -1 then
		local rect = okRect:rectify(x, y)
		print("find Ok: "..rect:toString())
		return rect
	else
		print("not find Ok!!!")
		return nil
	end
end

--- find Get
function findGet()
	-- local backdropRect= Rect(635,580,727,605)
	local getRect = Rect(687, 560, 815, 609, false)
	local x, y = findColor({687, 560, 815, 609}, 
		"687|560|0xcfa258,815|609|0xb47b38,729|576|0xf4e5a9,754|579|0xf1e2a6,766|579|0xf4e5a9",
		95, 0, 0, 0)
	if x > -1 then
		local rect = getRect:rectify(x, y)
		print("find Get: "..rect:toString())
		return rect
	else
		print("not find Get!!!")
		return nil
	end
end

--- find Sell
function findSell()
	-- local backdropRect= Rect(635,580,727,605)
	local sellRect = Rect(459, 550, 601, 609, false)
	local x, y = findColor({459, 550, 601, 609}, 
		"459|550|0xd7b16c,601|609|0xb47b38,512|559|0x533810,550|556|0x533810,550|575|0x533810",
		95, 0, 1, 0)
	if x > -1 then
		local rect = sellRect:rectify(x, y)
		print("find Sell: "..rect:toString())
		return rect
	else
		print("not find Sell!!!")
		return nil
	end
end

--- find Star 5 Rune
function findStar5Rune()
	-- local backdropRect= Rect(635,580,727,605)
	local star5RuneRect = Rect(421, 228, 507, 313, false)
	local x, y = findColor({421, 228, 507, 313}, 
		"421|228|0x25180e,507|313|0x25180e,433|240|0xeef0ef,477|242|0xeef1f0,484|241|0x414346",
		95, 0, 1, 0)
	if x > -1 then
		local rect = star5RuneRect:rectify(x, y)
		print("find Star 5 Rune: "..rect:toString())
		return rect
	else
		print("not find Star 5 Rune !!!")
		return nil
	end
end

--- find Star 6 Rune
-- TODO
function findStar6Rune()
	-- local backdropRect= Rect(635,580,727,605)
	local star6RuneRect = Rect(200, 370, 450, 390, false)
	local x, y = findColor({170, 220, 470, 650},
		"0|0|0xdcd1d5,250|0|0xcbaa64,250|20|0x5f4927,0|20|0xc38d40",
		95, 0, 0, 0)
	if x > -1 then
		local rect = star6RuneRect:rectify(x, y)
		print("find Star 6 Rune: "..rect:toString())
		return rect
	else
		print("not find Star 6 Rune !!!")
		return nil
	end
end

--- find SellYes
function findSellYes()
	-- local backdropRect= Rect(635,580,727,605)
	local sellYesRect = Rect(463, 410, 592, 461, false)
	local x, y = findColor({463, 410, 592, 461}, 
		"463|410|0xdebc62,592|461|0xb7872d,504|427|0xf8e9ad,533|436|0xf8e9ad,551|443|0xf8e9ad,634|252|0xe2c582,646|247|0xe2c582",
		95, 0, 1, 0)
	if x > -1 then
		local rect = sellYesRect:rectify(x, y)
		print("find SellYes: "..rect:toString())
		return rect
	else
		print("not find SellYes !!!")
		return nil
	end
end

--- find Replay
function findReplay()
	-- local backdropRect= Rect(635,580,727,605)
	local replayRect = Rect(219, 346, 572, 435, false)
	local x, y = findColor({219, 346, 572, 435}, 
		"219|346|0xaf8e5f,572|435|0xb59561,338|378|0xf8e9ad,392|377|0xf8e9ad,417|403|0xf8e9ad",
		95, 0, 1, 0)
	if x > -1 then
		local rect = replayRect:rectify(x, y)
		replayRect:shrink(50, 20)
		print("find Replay: "..rect:toString())
		return rect
	else
		print("not find Replay !!!")
		return nil
	end
end

--- find GiftBox
function findGiftBox()
	-- local backdropRect= Rect(635,580,727,605)
	local giftBoxRect = Rect(678, 420, 838, 475, false)
	local x, y = findColor({678, 420, 838, 475}, 
		"678|420|0xe2bf67,838|475|0xb37f25,716|438|0xdecd94,741|443|0xf8e9ad,807|447|0xd6c58d",
		95, 0, 1, 0)
	if x > -1 then
		local rect = giftBoxRect:rectify(x, y)
		print("find GiftBox: "..rect:toString())
		return rect
	else
		print("not find GiftBox !!!")
		return nil
	end
end

--- find ChargeShop
function findChargeShop()
	-- local backdropRect= Rect(635,580,727,605)
	local chargeShopRect = Rect(432, 418, 588, 471, false)
	local x, y = findColor({432, 418, 588, 471}, 
		"432|418|0xe3c471,588|471|0xbc8c34,491|436|0xcbb983,508|441|0xf8e9ad,540|457|0xf8e9ad",
		95, 0, 1, 0)
	if x > -1 then
		local rect = chargeShopRect:rectify(x, y)
		print("find ChargeShop: "..rect:toString())
		return rect
	else
		print("not find ChargeShop !!!")
		return nil
	end
end

--- find PurchaseYes
function findPurchaseYes()
	-- local backdropRect= Rect(635,580,727,605)
	local purchaseYesRect = Rect(450, 414, 594, 465, false)
	local x, y = findColor({450, 414, 594, 465}, 
		"450|414|0xe2c26f,594|465|0xb6842b,512|441|0xaf9c69,552|444|0xf8e9ad,680|269|0xf8e9ad",
		95, 0, 1, 0)
	if x > -1 then
		local rect = purchaseYesRect:rectify(x, y)
		print("find PurchaseYes: "..rect:toString())
		return rect
	else
		print("not find PurchaseYes !!!")
		return nil
	end
end
