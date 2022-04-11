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
-- local function getSurroundingTiles(x,y)
--     local tiles = {}
--     for i = x - 1, x + 6 do
--         table.insert(tiles,true)
--     end
--     return tiles
-- end


-- function Tomb:isSurrounded()
--     local tiles = getSurroundingTiles(self.x,self.y)
--     return tiles
--     -- return is_tomb_surrounded(self.x, self.y)
-- end

function Tomb:isSurrounded()
    for i = self.x, self.x + 3 do
        if fget(mget(i,self.y),1) ~= true then
            return false
        end
    end
    if fget(mget(self.x,self.y+1),1) ~= true then
        return false
    end
    if fget(mget(self.x,self.y+2),1) ~= true then
        return false
    end
    if fget(mget(self.x+3,self.y+1),1) ~= true then
        return false
    end
    if fget(mget(self.x+3,self.y+2),1) ~= true then
        return false
    end
    for i = self.x, self.x + 3 do
        if fget(mget(i,self.y+3),1) ~= true then
            return false
        end
    end
    return true
end