Mock = {}

Mock.tileMap = {
    grid = {
        {1,2,3},
        {4,5,6},
        {7,8,9}
    }
}

function Mock.tileMap:setGrid(newGrid)
    self.grid = newGrid
end

Mock.flags = {
    data = {}
}
for i = 1, 100 do
    Mock.flags.data[i] = {}
end

-- flags take format of {1,2,4}
function Mock.flags:set(index, flags)
    self.data[index] = flags
end

-- Mock mget function
function mget(x,y)
    return Mock.tileMap.grid[y][x]
end

local function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

-- Mock fget function
function fget(tileType, flag)
    return has_value(Mock.flags.data[tileType], flag)
end