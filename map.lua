function draw_map()
    map(0, 0, 0, 0, 128, 64)
end

function is_tile(tile_type,x,y)
    tile=mget(x,y)
    log(tile)
    -- log(mget(0,0))
    has_flag=fget(tile,tile_type)
    return has_flag
end

function can_move(x,y)
    return not is_tile(flags.wall,x,y)
end

function is_tomb_surrounded(x,y)
    if not is_tile(foot,x,y) then 
        return false
    end
    return true
end