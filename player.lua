Player = {
    x=0,
    y=3,
    sprite = 17
}

function Player:move()
    local proposedX = self.x
    local proposedY = self.y

    if (btnp(0)) then proposedX-=1 end
    if (btnp(1)) then proposedX+=1 end
    if (btnp(2)) then proposedY-=1 end
    if (btnp(3)) then proposedY+=1 end

    if (can_move(proposedX,proposedY)) then
        self.x = proposedX
        self.y = proposedY
        mset(proposedX,proposedY,4)
    else
        sfx(0)
    end
end

function Player:draw()
    spr(self.sprite,self.x*CellSize,self.y*CellSize)
end

