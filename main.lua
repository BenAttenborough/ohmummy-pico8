function _init() 
    player=Player
end

function _update() 
    player:move()
end

function _draw() 
    cls()
    draw_map()
    player:draw()
end