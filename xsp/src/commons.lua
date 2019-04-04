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

function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end