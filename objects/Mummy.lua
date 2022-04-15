Mummy = {
    x=15,
    y=15,
    direction=Directions.left,
    spriteRight = 8,
    spriteUp = 10,
    spriteDown = 12,
    spriteLeft = 14,
    step=false
}

function Mummy:toggleStep()
    self.step = not self.step
end

function Mummy:draw()
    local sprite = self.spriteRight
    if self.direction==Directions.left then
        sprite = self.spriteLeft
    elseif self.direction==Directions.up then
        sprite = self.spriteUp
    elseif self.direction==Directions.down then
        sprite = self.spriteDown
    end
    if self.step then
        sprite = sprite + 1
    end
    spr(sprite,self.x*CellSize,self.y*CellSize)
end

function Mummy:update()
    local proposedX = self.x
    local proposedY = self.y
    if Time % 10 == 0 then
        proposedX -= 1
        if can_move(proposedX, proposedY) then
            self.x = proposedX
            self.y = proposedY
            self:toggleStep()
        end
    end
end