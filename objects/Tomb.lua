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

function Tomb:open()
    self.isOpen = true
    mset(self.x+1,self.y+1,33)
    mset(self.x+2,self.y+1,34)
    mset(self.x+1,self.y+2,49)
    mset(self.x+2,self.y+2,50)
    sfx(0)
end