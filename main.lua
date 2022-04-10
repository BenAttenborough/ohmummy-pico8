function _init()
    Debug.log("Game initialised", true)
    Debug.log(mget(1,1))
    player=Player
end

function _update() 
    player:move()
    if is_tomb_surrounded(3,3) then
        -- print("test",5,5,0)
        Debug.log("Surrounded")
    end
end

function _draw() 
    cls()
    draw_map()
    player:draw()
    
end