package.path = package.path .. ";model/?.lua"
Rect = require("Rect")
Pattern = require("Pattern")
require("rects")
print("dungeonBattleRect is: "..dungeonBattleRect:toString())


local pattern = Pattern("200|230|0xd6a34d,440|300|0xc89e55,240|247|0xfe2222,205|262|0xf4725f,212|293|0x1c181b",
95, 0, 0, 0)
local pattern1 = Pattern("0|0|0xd6a34d,600|800|0xc89e55,240|247|0xfe2222,205|262|0xf4725f,212|293|0x1c181b",
95, 0, 0, 0)

local rect = Rect(200, 230, 440, 300, pattern, true)
local rect1 = Rect(0, 0, 600, 800, pattern1, false)




print("rect is: "..rect:toString())
print("rect1 is: "..rect1:toString())


print("rect exists: "..(rect:exists() and "true" or "false"))
print("rect1 exists: "..(rect1:exists() and "true" or "false"))
print("dungeonBattleRect exists in rect1: "..(rect1:exists(dungeonBattleRect) and "true" or "false"))
print("dungeonBattleRect is: "..dungeonBattleRect:toString())

print("dragonLairRect exists in rect1: "..(rect1:exists(dragonLairRect) and "true" or "false"))
print("dragonLairRect is: "..dragonLairRect:toString())