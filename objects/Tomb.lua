Tomb = {}

function Tomb:init(o)
    self.isOpen = false
    self.offset = 3
    self.isOpen = false
    setmetatable(o, self)
    self.__index = self
    return o
end

function Tomb:isSurrounded()
    if self.isOpen then
        return false
    end
    for i = self.x, self.x + self.offset do
        if fget(mget(i,self.y),Flags.foot) ~= true then
            return false
        end
    end
    if fget(mget(self.x,self.y+1),Flags.foot) ~= true then
        return false
    end
    if fget(mget(self.x,self.y+2),Flags.foot) ~= true then
        return false
    end
    if fget(mget(self.x+self.offset,self.y+1),Flags.foot) ~= true then
        return false
    end
    if fget(mget(self.x+self.offset,self.y+2),Flags.foot) ~= true then
        return false
    end
    for i = self.x, self.x + self.offset do
        if fget(mget(i,self.y + self.offset),Flags.foot) ~= true then
            return false
        end
    end
    return true
end

function Tomb:setTombGraphic(type)
    local offset = 2
    local firstSprite = 33
    local revealedSprite = firstSprite
    if type == Items.treasure then revealedSprite = firstSprite end
    if type == Items.ankh then revealedSprite = firstSprite + offset end
    if type == Items.coffin then revealedSprite = firstSprite + (offset * 2) end
    if type == Items.key then revealedSprite = firstSprite + (offset * 3) end
    if type == Items.mummy then revealedSprite = firstSprite + (offset * 4) end
    if type == Items.empty then revealedSprite = firstSprite + (offset * 5) end
    mset(self.x+1,self.y+1,revealedSprite)
    mset(self.x+2,self.y+1,revealedSprite+1)
    mset(self.x+1,self.y+2,revealedSprite+16)
    mset(self.x+2,self.y+2,revealedSprite+17)
end

function Tomb:open()
    self.isOpen = true
    self:setTombGraphic(self.type)
    sfx(0)
    if self.type == Items.treasure then
        ui:addScore(50)
    elseif self.type == Items.key then
        ui:addScore(75)
    elseif self.type == Items.ankh then
        ui:addScore(100)
    elseif self.type == Items.coffin then
        ui:addScore(200)
    end
end