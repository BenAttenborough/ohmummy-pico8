function draw_map()
    map(0, 0, 0, 0, 128, 64)
end

function is_tile(tile_type,x,y)
    tile=mget(x,y)
    has_flag=fget(tile,tile_type)
    return has_flag
end

local function is_in_bounds(x,y)
    return x >= Bounds.left and x <= Bounds.right and y >= Bounds.up and y <= Bounds.down
end

function can_move(x,y)
    return not is_tile(Flags.wall,x,y) and is_in_bounds(x,y)
end
