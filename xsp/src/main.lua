init("0", 1)
Rect = require("model.Rect")

function Sleep(n)
  os.execute("sleep " .. n)
end


-- rect
local rect = Rect(50, 50, 200, 200)
local x, y = rect:center()

print("rect.center:"..x..","..y)

--for i = 1, 10 do
--    Sleep(1)
--    local x, y  = rect:random()
--    print("rect.random:"..x..","..y)
--end


-- tap, interval is second
function tap(x, y, interval)
	touchDown(1, x, y)
	mSleep(interval)
	touchUp(1, x, y)  
end

-- dungeon region
local dr = Rect(170,220,470,650)

-- find dragon dungeon region

-- dragon dungeon region
function findDungeon()
	local ddr = Rect(200,370,450,390)
	local x, y = findColor({170, 220, 470, 650}, 
	"0|0|0xdcd1d5,250|0|0xcbaa64,250|20|0x5f4927,0|20|0xc38d40",
	95, 0, 0, 0)
	if x > -1 then
		ddr:rectify(x, y)
		print("find dragon dungeon region: "..ddr.x1..","..ddr.y1.."; "..ddr.x2..","..ddr.y2)
		return ddr
	else
		print("not find dragon dungeon!!!")
		return nil
	end
end

-- find b10

-- build region
local br= Rect(540,200,850,670)

function findB10()
	-- b10 region 
	local bten= Rect(635,580,727,605)
	local x, y = findColor({540, 200, 850, 670}, 
	"0|0|0x8c1919,92|0|0x644929,92|20|0xe4ddbf,0|20|0x791116",
	95, 0, 0, 0)
	if x > -1 then
		bten:rectify(x, y)
		print("find b10 region: "..bten.x1..","..bten.y1.."; "..bten.x2..","..bten.y2)
		return bten
	else
		print("not find b10!!!")
		return nil
	end
end

local x, y
-- enter dragon dungeon
dungeonRegion = findDungeon()
if dungeonRegion~=nil then
	x, y = dungeonRegion:random()
	-- tap
	tap(x, y, 500)
end

mSleep(1000)
-- enter b10
-- battle region
local battleRegion = Rect(1020, 580, 1100, 650)

x, y = battleRegion:random()
print("BattleRegion: "..x..","..y)
-- tap
tap(x, y, 400)
mSleep(1000)



-- start battle

function startBattle()
	local startBattleRegion = Rect(970, 460, 1185, 558)
	x, y = findColor({970, 460, 1185, 558}, 
	"0|0|0xfcfcd0,-57|67|0x8f8058,89|57|0xf3e5aa",
	95, 0, 0, 0)
	if x > -1 then
		print("start battle region: "..startBattleRegion.x1..","..startBattleRegion.y1.."; "..startBattleRegion.x2..","..startBattleRegion.y2)
		return startBattleRegion
	else
		print("not found startBattleRegion!!!")
		return nil
	end
end
startBattleRegion = startBattle()
if startBattleRegion~= nil then
	x, y = startBattleRegion:random()
	-- tap
	tap(x, y, 510)
end
mSleep(2000)


-- auto fight
local autoRegion = Rect(210, 648, 260, 697)
function isAuto()
	local x, y = findColor({210, 648, 260, 697}, 
	"0|0|0xffffff,23|-1|0xffffff,25|20|0xffffff,-1|22|0xffffff",
	99, 0, 0, 0)
	if x > -1 then
		print("is auto")
		return 1
	else
		print("is not auto")
		return 0
	end
end

local victoryRegion = Rect(438, 85, 842, 145)
function isVictory()
	local x, y = findColor({438, 85, 842, 145}, 
	"0|0|0xffff33,61|-2|0xffff38,169|3|0xffff34,369|5|0xf3f02f",
	95, 0, 0, 0)
	if x > -1 then
		print("is victory")
		return 1
	else
		print("fail")
		return 0
	end
end

function findOkRegion()
	local okRegion = Rect(560,570, 700,620)
	local x, y = findColor({402, 164, 877, 647}, 
	"0|0|0xd0a55c,134|0|0xcfa65d,130|39|0xbf8944,3|39|0xc08843,75|26|0xf4e5a9",
	99, 0, 0, 0)
	if x > -1 then
		print("find ok region: ")
		return okRegion
	else
		print("not found ok region!!!")
		return nil
	end
end

function findGetRegion()
	local getRegion = Rect(670,550, 820,610)
	local x, y = findColor({402, 164, 877, 647}, 
	"0|0|0xdab16c,150|0|0xd3a861,150|60|0xb47b38,0|60|0xb57c39,80|33|0xc2b07a",
	99, 0, 0, 0)
	if x > -1 then
		print("find get region: ")
		return getRegion
	else
		print("not found get region!!!")
		return nil
	end
end

function findReplayRegion()
	local replayRegion = Rect(225, 355, 593, 427)
	local x, y = findColor({225, 355, 593, 427}, 
	"0|0|0xf8e9ad,120|1|0xfbd879,118|17|0xe7b751,-1|16|0xf8e9ad",
	99, 0, 0, 0)
	if x > -1 then
		print("find get region: ")
		return replayRegion
	else
		print("not found get region!!!")
		return nil
	end
end

function isFighting()
	local x, y = findColor({1119, 13, 1172, 70}, 
	"0|0|0x38321a,25|1|0xc4af48,35|32|0xcd975b,0|43|0xd1852a",
	99, 0, 0, 0)
	if x > -1 then
		print("fight over")
		return 0
	else
		print("is fighting")
		return 1
	end
end

while(true)
do
	-- auto fight
	if isAuto() == 1 then
		mSleep(3000)
	else
		x, y = autoRegion:random()
		tap(x, y, 300)
		mSleep(1000)
	end
	-- find result
	
	if isFighting() == 0 then
		if isVictory() then 
			local r = Rect(400, 300, 800, 600)
			x, y = r:random()
			tap(x, y, 300)
			mSleep(1400)
			x, y = r:random()
			tap(x, y, 200)
			mSleep(1000)
		end

		-- handle result

		local okRegion=findOkRegion()
		local getRegion=findGetRegion()
		if okRegion~=nil then
			x, y = okRegion:random()
			tap(x, y, 500)
			print("ok....")
			mSleep(1100)
		elseif getRegion~=nil then
			x, y = getRegion:random()
			print("get....")
			tap(x, y, 510)
			mSleep(900)
		else
			print("can not handle result")
		end



		local replayRegion = findReplayRegion()
		if replayRegion ~= nil then
			x, y = replayRegion:random()
			print("replay....")
			tap(x, y, 510)
			mSleep(1100)
		end
	end
	mSleep(3100)
end