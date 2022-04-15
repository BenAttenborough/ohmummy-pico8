Player = {
    x=0,
    y=3,
    spriteRight = 17,
    spriteUp = 19,
    spriteDown = 21,
    spriteLeft = 23,
    direction=Directions.right,
    step=false
}

function Player:toggleStep()
    self.step = not self.step
end

function Player:move()
    local proposedX = self.x
    local proposedY = self.y

    if (btnp(Buttons.left)) then 
        proposedX-=1
        self.direction=Directions.left
        self:toggleStep()
    end
    if (btnp(Buttons.right)) then 
        proposedX+=1 
        self.direction=Directions.right
        self:toggleStep()
    end
    if (btnp(Buttons.up)) then 
        proposedY-=1
        self.direction=Directions.up
        self:toggleStep()
    end
    if (btnp(Buttons.down)) then 
        proposedY+=1 
        self.direction=Directions.down
        self:toggleStep()
    end

    if (can_move(proposedX,proposedY)) then
        self.x = proposedX
        self.y = proposedY
        if not fget(mget(proposedX,proposedY),4) then
            mset(proposedX,proposedY,4)
            tombs:update()
        end
    else
        sfx(1)
    end
end

function Player:draw()
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
    palt(0,false)
    spr(sprite,self.x*CellSize,self.y*CellSize)
    pal()
end

