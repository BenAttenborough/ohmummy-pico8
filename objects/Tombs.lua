Tombs = {}

function Tombs:init()
    self.container = {}
    local offSetX = 3
    local offSetY = 3
    local offSetTop = 3
    for y=0, 3 do
        for x=0, 4 do
            self.container[#self.container + 1] = Tomb:init({x = x * offSetX, y = y * offSetY + offSetTop})
        end
    end
    self.__index = self
    return self
end

function Tombs:update()
    for tomb in all(self.container) do
        if tomb:isSurrounded() then
            tomb:open()
        end
    end
end