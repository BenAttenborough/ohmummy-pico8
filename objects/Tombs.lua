Tombs = {}

function tombSeeding()
    local seeding = {
        Items.key,
        Items.ankh,
        Items.coffin,
        Items.mummy
    }
    for i=1, 10 do
        seeding[#seeding + 1] = Items.treasure
    end
    for i=1, 6 do
        seeding[#seeding + 1] = Items.empty
    end
    Utils.shuffle(seeding)
    return seeding
end

function Tombs:init()
    self.container = {}
    local offSetX = 3
    local offSetY = 3
    local offSetTop = 3
    local seeding = tombSeeding()
    local i = 0
    for y=0, 3 do
        for x=0, 4 do
            self.container[#self.container + 1] = Tomb:init({x = x * offSetX, y = y * offSetY + offSetTop, type = seeding[i]})
            i=i+1
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