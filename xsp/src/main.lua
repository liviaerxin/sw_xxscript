package.path = package.path .. ";model/?.lua"

Point = require("Point")
Rect = require("Rect")

function Sleep(n)
  os.execute("sleep " .. n)
end

-- point
local p = Point(10, 20)
print("p.x:"..p.x.."  p.y:"..p.y)


-- rect
local rect = Rect(50, 50, 200, 200)
center = rect:center()

print("rect.center:"..center.x..","..center.y)

for i = 1, 10 do
    Sleep(1)
    rand = rect:random()
    print("rect.random:"..rand.x..","..rand.y)
end


