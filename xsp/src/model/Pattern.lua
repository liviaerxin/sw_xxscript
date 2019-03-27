local Pattern = {}
Pattern.__index = Pattern

setmetatable(Pattern, {
    __call = function (cls, ...)
        return cls.new(...)
    end,
})

-- Pattern("678|420|0xe2bf67,838|475|0xb37f25,716|438|0xdecd94,741|443|0xf8e9ad,807|447|0xd6c58d",
-- 95, 0, 1, 0)

--[[ Pattern Notion!!!
    pattern represent the rect's pixel features, which is notably less than the size of
    the original rect image pixel. For instance on the 100*100 rect, the pattern always 
    has 5 pixels to recognize the rect, contrasting with 10,000 pixels of an intact image.
    Noticing, it must have at least two points, the first point (x1, y1), the top left on 
    rect, and the second point (x2, y2), the bottom right on the rect.
]]

function Pattern.new(points, degree, hdir, vdir, priority)
    local self = setmetatable({}, Pattern)
    self.points = points
    self.degree = degree
    self.hdir = hdir
    self.vdir = vdir
    self.priority = priority
    return self
end

function Pattern:toString()
	return "Pattern: { points="..self.points..", degree=".. self.degree..
		", hdir="..self.hdir..", vdir="..self.vdir..
		", priority="..self.priority.." }"
end

return Pattern