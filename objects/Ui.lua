Ui = {}

function Ui:init()
    self.score = 0
    self.__index = self
    return self
end

function Ui:draw()
    print("score ", 8, 9, Colours.orange)
    print(self.score, 30, 9, Colours.red)
end

function Ui:addScore(val)
    self.score = self.score + val
end