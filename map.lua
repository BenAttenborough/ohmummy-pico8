function draw_map()
    map(0, 0, 0, 0, 128, 64)
end

function is_tile(tile_type,x,y)
    tile=mget(x,y)
    has_flag=fget(tile,tile_type)
    return has_flag
end

function can_move(x,y)
    return not is_tile(flags.wall,x,y)
end

function is_tomb_surrounded(x,y)
    if is_tile(flags.foot,x,y) then 
        return true
    else
        return false
    end
    
end