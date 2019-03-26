local Rect = {}
Rect.__index = Rect

setmetatable(Rect, {
    __call = function (cls, ...)
    return cls.new(...)
  end,
})

-- Initialize the pseudo random number generator
math.randomseed(os.time())
math.random(); math.random(); math.random()

function Rect.new(x1, y1, x2, y2, isFloated)
  local self = setmetatable({}, Rect)
  assert(x2 > x1, "x2 must be larger than x1")
  assert(y2 > y1, "y2 must be larger than y1")
  self.x1 = x1
  self.y1 = y1
  self.x2 = x2
  self.y2 = y2
  self.isFloated = isFloated or false -- Jack is the default, but if the parameter name is given, name will be used instead
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

function Rect:width()
    return self.x2 - self.x1
end

function Rect:width()
    return self.y2 - self.y1
end

function Rect:toString()
	return "Rect: { x1="..self.x1..", y1=".. self.y1..
		", x2="..self.x2..", y2="..self.y2..
		", isFloated="..(self.isFloated and "true" or "false").." }"
end

function Rect:toTable()
    return {self.x1, self.y1, self.x2, self.y2}
end

function Rect:shrink(w, h)
    self.x1 = self.x1 + w
    self.y1 = self.y1 + h
    self.x2 = self.x2 - w
    self.y2 = self.y2 - h
end

function Rect:rectify(x, y)
	if self.isFloated then
		local x2 = self.x2 + x - self.x1
		local y2 = self.y2 + y - self.y1
		local x1 = x
		local y1 = y
		return Rect(x1, y1, x2, y2, true)
	else
		print("No need to rectify because the rect is not floated")
		return Rect(self.x1, self.y1, self.x2, self.y2, false)
	end
end

return Rect