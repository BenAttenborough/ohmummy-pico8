Player = {
    x=0,
    y=3,
    sprite = 17
}

function Player:move()
    local proposedX = self.x
    local proposedY = self.y

    if (btnp(0)) proposedX-=1
    if (btnp(1)) proposedX+=1
    if (btnp(2)) proposedY-=1
    if (btnp(3)) proposedY+=1

    if (can_move(proposedX,proposedY)) then
        self.x = proposedX
        self.y = proposedY
        mset(proposedX,proposedY,4)
    else
        sfx(0)
    end
end

function Player:draw()
    spr(self.sprite,self.x*cellSize,self.y*cellSize)
end

