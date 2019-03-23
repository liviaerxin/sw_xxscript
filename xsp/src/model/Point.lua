local Point = {}
Point.__index = Point

setmetatable(Point, {
    __call = function (cls, ...)
    return cls.new(...)
  end,
})

function Point.new(x, y)
  local self = setmetatable({}, Point)
  self.x = x
  self.y = y
  return self
end

-- the : syntax here causes a "self" arg to be implicitly added before any other args
function Point:set_x(x)
  self.x = x
end

function Point:get_x()
  return self.x
end

-- the : syntax here causes a "self" arg to be implicitly added before any other args
function Point:set_y(y)
  self.y = y
end
  
function Point:get_y()
  return self.y
end

return Point