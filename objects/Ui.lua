Ui = {}

function Ui:init()
    self.score = 0
    self.__index = self
    return self
end

function Ui:draw()
    print("score "..self.score, 8, 8, 9)
end

function Ui:addScore(val)
    self.score = self.score + val
end