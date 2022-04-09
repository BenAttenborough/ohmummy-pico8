function _init() 
    player=Player
end

function _update() 
    player:move()
    if is_tomb_surrounded(3,3) then
        -- print("test",5,5,0)
        log("Surrounded")
    end
end

function _draw() 
    cls()
    draw_map()
    player:draw()
    
end