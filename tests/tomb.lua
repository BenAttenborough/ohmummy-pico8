luaunit = require('luaunit')
require "globals"
require "tests.mocks.pico"
require "objects.Tomb"
require "helper"

function testIsSurrounded()
    -- Mock grid to represent surrounded tomb
    Mock.tileMap:setGrid({
        {4,4,4,4},
        {4,1,1,4},
        {4,1,1,4},
        {4,4,4,4}
    })
    -- Set flag 1 on sprite 4
    Mock.flags:set(4, {1})
    -- Set location of tomb to top left of grid 
    local tomb1 = Tomb:init({x = 1, y = 1})
    luaunit.assertEquals(tomb1:isSurrounded(),true)
    -- Mock grids to represent non-surrounded tombs
    Mock.tileMap:setGrid({
        {4,4,4,4},
        {2,1,1,4},
        {4,1,1,4},
        {4,4,4,4}
    })
    luaunit.assertEquals(tomb1:isSurrounded(),false)
    Mock.tileMap:setGrid({
        {4,4,4,4},
        {4,1,1,4},
        {4,1,1,2},
        {4,4,4,4}
    })
    luaunit.assertEquals(tomb1:isSurrounded(),false)
    Mock.tileMap:setGrid({
        {4,4,4,4},
        {4,1,1,4},
        {4,1,1,4},
        {4,2,2,4}
    })
    luaunit.assertEquals(tomb1:isSurrounded(),false)
end

os.exit( luaunit.LuaUnit.run() )