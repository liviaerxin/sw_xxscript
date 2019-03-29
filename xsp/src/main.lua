init("0", 1)
print("requiring...")

Pattern = require("model.Pattern")
Rect = require("model.Rect")
require("rects")

print("sw script starting...")

-- Initialize the pseudo random number generator
math.randomseed(os.time())
math.random(); math.random(); math.random()

------------------------------- Common Help Functions ----------------------------------------
-- random point function
-- @param rect parameter Rect
function randomPoint(rect)
	return math.random(rect.x1, rect.x2), math.random(rect.y1, rect.y2)
end

-- tap function, interval is based on millisecond
function tap(x, y, interval)
	print("tap x: "..x..",y: "..y..",interval: "..interval.."ms")
	touchDown(1, x, y)
	mSleep(interval)
	touchUp(1, x, y) 
end

-- tap rect function, tap random point in rect with random holding time 
-- @param rect parameter Rect
function tapRect(rect)
	local x, y = randomPoint(rect)
	local interval = math.random(150, 300)
	tap(x, y, interval)
end

-- time spending
-- @param string
function ts(str)
	if BT==nil then
		BT=mTime()
	end
	local tt=mTime()
	print(str..'--time spending:'..(tt-BT)..'ms')
	BT=mTime()

end

SceneList = {
	{"hall", ProfileRect},
	{"map", WingMapRect},
	{"arena", BattleArenaRect},
	{"dungeon", DungeonListRect}
}


---------------------------------- Function ---------------------------------------
--- get current scene in the game from the given scene list.
-- @param sceneList
function getCurrentScene(sceneList)
	local scene = nil
	keepScreen(true)
	for	_, v in pairs(sceneList) do
		if v[2]:exists() then
			scene = v[1]
			break
		end
	end
	keepScreen(false)
	return scene
end

----------------------- Operation Methods ----------------------
function clickDragonB10()
	if DungeonListRect:exists(DragonLairRect) then
		tapRect(DragonLairRect)
		mSleep(4000)
		if DungeonBattleRect:exists(B10BattleButtonRect) then
			tapRect(B10BattleButtonRect)
			mSleep(3000)
			return
		end
	end
	print("not click dragon b10 !")
	lua_exit()
end

function clickStart()
	if StartBattleRect:exists() then
		tapRect(StartBattleRect)
		mSleep(4000)
		return
	end
	print("not click start !")
	lua_exit()
end

function runDungeon(number)
	local completedNumber = 0
	if number == nil then
		number = 1000
	end
	local first = "gift"
	local buyWithCrystal = 0
	local maxBuy = 7
	local rune56 = 0
	while (true)
	do
		if LoadingRect:exists() then
			print("is loading...")
			mSleep(3000)
		end

		-- keepScreen(true)
		if PlayRect:exists() then
			print("click play button to auto fight")
			tapRect(PlayRect:resize(10, 10))
			mSleep(1000)
		end

		if PauseRect:exists() then
			print("is fighting")
			mSleep(4310)
		end

		if (not LoadingRect:exists()) and (not GearRect:exists()) then
		
			if FlashInVictoryRect:exists() then
				print("is victory")
				tapRect(FullScreen:resize(200, 200))
				mSleep(1230)
			end

			if TreasureBoxRect:exists() then
				print("find treasure")
				completedNumber = completedNumber + 1
				tapRect(TreasureBoxRect)
				mSleep(1980)
			end

			if FullScreen:exists(OKButtonRect) then
				print("click ok")
				tapRect(OKButtonRect)
				mSleep(1100)
			end

			if FullScreen:exists(Start5RuneWRect) then
				print("find rune of 5 or 6 stars")
				rune56 = rune56 + 1
				mSleep(1000)
			end

			if GetButtonRect:exists() then
				print("click get")
				tapRect(GetButtonRect)
				mSleep(1260)
			end

			if ReplayRect:exists() then
				print("click replay")
				tapRect(ReplayRect)
				mSleep(1780)
			end

			if GiftBoxButtonRect:exists() and (first == "gift") then
				print("search energy in gift box")
				tapRect(GiftBoxButtonRect)
				mSleep(1800)
			end

			if CollectGiftBoxRect:exists() then
				print("collect energy")
				tapRect(CollectGiftBoxRect)
				mSleep(1300)
			end

			if BackGiftBoxRect:exists() then
				print("exit gift box")
				tapRect(BackGiftBoxRect)
				mSleep(2310)
			end
			
			if GiftDisabledBox:exists() and (first == "gift") then
				print("switch to shop")
				first = "shop"
				mSleep(1100)
			end
			
			if ShopButtonRect:exists() and (first == "shop") and (buyWithCrystal < maxBuy) then
				print("search energy in shop")
				tapRect(ShopButtonRect)
				mSleep(1800)
			end

			
			if CrystalEnergyRect:exists() then
				print("buy energy with crystal")
				tapRect(CrystalEnergyRect)
				mSleep(2310)
			end

			if PurchaseYesRect:exists() then
				print("purchase yes")
				tapRect(PurchaseYesRect)
				mSleep(1310)
			end

			if PurchaseOkRect:exists() then
				print("purchase ok")
				buyWithCrystal = buyWithCrystal + 1
				tapRect(PurchaseOkRect)
				mSleep(1310)
			end
			

			if PurchaseCloseRect:exists() then
				print("purchase close")
				tapRect(PurchaseCloseRect)
				mSleep(1110)
			end
			
		end
		-- completedNumber = completedNumber + 1
		if (completedNumber > number) then
			break
		end

		if FullScreen:exists(NetworkYesRect) then
			print("unstable network yes")
			tapRect(NetworkYesRect)
			mSleep(2110)
		end
		
		print("sleeping...")
		print("have run the battle: "..completedNumber.." times")
		print("have found  5 or 6 star rune: "..rune56.." times")
		mSleep(3000)
	end
	print("total 5 or 6 star rune number is: "..rune56)
	print("total run number is: "..completedNumber)
end
------------------------mock procedures -----------------

-- dragon b10 procedure
-- from cairos dungeon scene
-- TODO: chekc where I am, and plan a route to the scene
local currentScene = getCurrentScene(SceneList)
print("current scene is: "..currentScene)
clickDragonB10()
clickStart()
runDungeon(20)





