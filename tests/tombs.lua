luaunit = require('luaunit')
require "tests.mocks.pico"
require "objects.Tombs"
require "helper"

-- function testTombs()
--     local tomb = Tomb:init({x = 3, y = 3})
--     print(Debug.GobalString)
--     print(Debug.dump(tomb:isSurrounded()))
-- end

-- function testMget()
--     luaunit.assertEquals(mget(1,1),1)
--     luaunit.assertEquals(mget(2,1),2)
--     luaunit.assertEquals(mget(3,1),3)
--     luaunit.assertEquals(mget(1,2),4)
--     luaunit.assertEquals(mget(2,2),5)
--     luaunit.assertEquals(mget(3,2),6)
--     luaunit.assertEquals(mget(1,3),7)
--     luaunit.assertEquals(mget(2,3),8)
--     luaunit.assertEquals(mget(3,3),9)
--     luaunit.assertEquals(mget(3,3),9)
--     local tomb = Tomb:init({x = 3, y = 3})
--     luaunit.assertEquals(tomb:test(),1)
-- end

-- function testIsSurrounded()
--     -- Mock grid to represent surrounded tomb
--     Mock.tileMap:setGrid({
--         {1,2,3},
--         {4,5,6},
--         {7,8,9}
--     })
--     -- Set location of tomb to top left of grid 
--     local tomb1 = Tomb:init({x = 1, y = 1})
--     luaunit.assertEquals(tomb1:isSurrounded(),true)
--     -- local tomb2 = Tomb:init({x = 1, y = 2})
--     -- luaunit.assertEquals(tomb2:isSurrounded(),false)
--     -- Mock.map:setGrid({
--     --     {9,9,9},
--     --     {9,9,9},
--     --     {7,8,9}
--     -- })
--     -- local tomb3 = Tomb:init({x = 1, y = 1})
--     -- luaunit.assertEquals(tomb3:isSurrounded(),true)
-- end

function testFget()
    Mock.tileMap:setGrid({
        {1,2,3},
        {4,5,6},
        {7,8,9}
    })
    Mock.flags:set(1, {1,2,4})
    luaunit.assertEquals(fget(mget(1,1),1),true)
    luaunit.assertEquals(fget(mget(1,1),2),true)
    luaunit.assertEquals(fget(mget(1,1),3),false)
end

os.exit( luaunit.LuaUnit.run() )