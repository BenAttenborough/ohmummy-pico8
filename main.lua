function _init()
    Debug.log("Game initialised", true)
    player=Player
    tombs=Tombs:init()
    ui=Ui:init()
end

function _update()
    player:move()
    -- tombs:update()
    Time = (Time + 1) % 60
end

function _draw()
    cls()
    draw_map()
    player:draw()
    ui:draw()
    -- print(Time,10,120,Colours.red)
end