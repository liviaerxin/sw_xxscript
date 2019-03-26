package.path = package.path .. ";model/?.lua"
Rect = require("Rect")
local rect = Rect(10, 10, 100, 100, true)
print("rect is: "..rect:toString())
local rect1 = rect:rectify(20, 20)
print("rectified rect is: "..rect1:toString())
for _, v in ipairs(rect1:toTable()) do
    print(v)
end


function findGiantKeep()
	local dungeonLeftRect = Rect(160,200,470,660) -- backdrop
	local giantRect = Rect(200, 230, 440, 300, true)
    local x, y = 200, 230
        -- findColor({160, 200, 470, 660}, 
		-- "200|230|0xd6a34d,440|300|0xc89e55,240|247|0xfe2222,205|262|0xf4725f,212|293|0x1c181b",
		-- 95, 0, 0, 0)
	if x > -1 then
		local rect = giantRect:rectify(x, y)
		print("find Giant's Keep: "..rect:toString())
		return rect
	else
		print("not find Giant's Keep!!!")
		return nil
	end
end

local gr = findGiantKeep()
gr:shrink(10,10)
print("rect is: "..gr:toString())