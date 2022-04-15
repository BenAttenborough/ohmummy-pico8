function _init()
    Debug.log("Game initialised", true)
    player=Player
    mummy=Mummy
    tombs=Tombs:init()
    ui=Ui:init()
end

function _update()
    player:move()
    mummy:update()
    Time = (Time + 1) % 60
end

function _draw()
    cls()
    draw_map()
    player:draw()
    mummy:draw()
    ui:draw()
    -- print(Time,10,120,Colours.red)
end