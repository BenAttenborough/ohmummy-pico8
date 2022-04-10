Tomb = {}

function Tomb:init(o)
    -- self.x = x
    -- self.y = y
    -- self.isOpen = false

    setmetatable(o, self)
    self.__index = self
    return o
end

local function getSurroundingTiles(x,y)
    local tiles = {}
    for i = x - 1, x + 6 do
        table.insert(tiles,true)
    end
    return tiles
end


function Tomb:isSurrounded()
    local tiles = getSurroundingTiles(self.x,self.y)
    return tiles
    -- return is_tomb_surrounded(self.x, self.y)
end

