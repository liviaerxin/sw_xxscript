-- http://lua-users.org/wiki/ObjectOrientationTutorial
local MyClass = {} -- the table representing the class, which will double as the metatable for the instances
MyClass.__index = MyClass -- failed table lookups on the instances should fallback to the class table, to get methods

-- syntax equivalent to "MyClass.new = function..."
function MyClass.new(init)
  local self = setmetatable({}, MyClass)
  self.value = init
  return self
end

function MyClass.set_value(self, newval)
  self.value = newval
end

function MyClass.get_value(self)
  return self.value
end

return MyClass