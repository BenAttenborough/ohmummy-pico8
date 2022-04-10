Tomb = {}

function Tomb:init(o)
    -- self.x = x
    -- self.y = y
    -- self.isOpen = false

    setmetatable(o, self)
    self.__index = self
    return o
end


-- ALL the below functions are me testing stuff, not actual game code yet
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

function Tomb:test()
    return mget(1,1)
end

function Tomb:check()
    for i = self.x, self.x + 2 do
        if mget(i,self.y) > 4 then
            return false
        end
    end
    return true
end