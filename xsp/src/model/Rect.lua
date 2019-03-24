local Rect = {}
Rect.__index = Rect

setmetatable(Rect, {
    __call = function (cls, ...)
    return cls.new(...)
  end,
})

math.randomseed(os.time())

function Rect.new(x1, y1, x2, y2)
  local self = setmetatable({}, Rect)
  assert(x2 > x1, "x2 must be larger than x1")
  assert(y2 > y1, "y2 must be larger than y1")
  self.x1 = x1
  self.y1 = y1
  self.x2 = x2
  self.y2 = y2
  return self
end

-- skip properties setter and getter, it's too cumbersome.
-- the : syntax here causes a "self" arg to be implicitly added before any other args
-- function Rect:set_x(x)
--   self.x = x
-- end

-- function Rect:get_x()
--   return self.x
-- end

-- -- the : syntax here causes a "self" arg to be implicitly added before any other args
-- function Rect:set_y(y)
--   self.y = y
-- end
  
-- function Rect:get_y()
--   return self.y
-- end

function Rect:center()
    return (self.x1 + self.x2)/2, (self.y1 + self.y2)/2
end

function Rect:random()
    return math.random(self.x1, self.x2), math.random(self.y1, self.y2)
end

function Rect:width()
    return self.x2 - self.x1
end

function Rect:width()
    return self.y2 - self.y1
end

function Rect:table()
	return {self.x1,  self.y1, self.x2, self.y2}
end

function Rect:rectify(x, y)
	self.x2 = self.x2 + x - self.x1
	self.y2 = self.y2 + y - self.y1
	self.x1 = x
	self.y1 = y
end

return Rect