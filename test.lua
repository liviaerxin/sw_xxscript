package.path = package.path .. ";model/?.lua"

-- Function
print("---------------------------------mymath-------------------------------------")
mymathmodule = require("mymath")
mymathmodule.add(10,20)
mymathmodule.sub(30,20)
mymathmodule.mul(10,20)
mymathmodule.div(30,20)

-- MyClass
print("---------------------------------MyClass-------------------------------------")
MyClass = require("MyClass")
local i = MyClass.new(5)
-- tbl:name(arg) is a shortcut for tbl.name(tbl, arg), except tbl is evaluated only once
print(i:get_value()) --> 5
i:set_value(6)
print(i:get_value()) --> 6


-- MyClassA
print("---------------------------------MyClassA-------------------------------------")
MyClassA = require("MyClassA")
local ia = MyClassA(5)
-- tbl:name(arg) is a shortcut for tbl.name(tbl, arg), except tbl is evaluated only once
print(ia:get_value()) --> 5
ia:set_value(6)
print(ia:get_value()) --> 6