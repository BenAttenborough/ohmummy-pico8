function _init()
    Debug.log("Game initialised", true)
    player=Player
    tombs=Tombs:init()
    ui=Ui:init()
end

function _update()
    player:move()
    tombs:update()
end

function _draw()
    cls()
    draw_map()
    player:draw()
    ui:draw()
end