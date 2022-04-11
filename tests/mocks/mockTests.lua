luaunit = require('luaunit')
require "tests.mocks.pico"

function testMget()
    Mock.tileMap:setGrid({
        {1,2,3},
        {4,5,6},
        {7,8,9}
    })
    luaunit.assertEquals(mget(1,1),1)
    luaunit.assertEquals(mget(2,1),2)
    luaunit.assertEquals(mget(3,1),3)
    luaunit.assertEquals(mget(1,2),4)
    luaunit.assertEquals(mget(2,2),5)
    luaunit.assertEquals(mget(3,2),6)
    luaunit.assertEquals(mget(1,3),7)
    luaunit.assertEquals(mget(2,3),8)
    luaunit.assertEquals(mget(3,3),9)
    Mock.tileMap:setGrid({
        {4,4,4,4},
        {4,1,1,4},
        {4,1,1,4},
        {4,4,4,4}
    })
    luaunit.assertEquals(mget(1,1),4)
end

function testFget()
    Mock.flags:set(1, {1,2,4})
    luaunit.assertEquals(fget(1,1),true)
end

function testFgetMget()
    Mock.tileMap:setGrid({
        {1,2,3},
        {4,5,6},
        {7,8,9}
    })
    Mock.flags:set(1, {1,2,4})
    luaunit.assertEquals(fget(mget(1,1),1),true)
    luaunit.assertEquals(fget(mget(1,1),2),true)
    luaunit.assertEquals(fget(mget(1,1),3),false)
    Mock.flags:set(1, {3})
    luaunit.assertEquals(fget(mget(1,1),1),false)
    luaunit.assertEquals(fget(mget(1,1),2),false)
    luaunit.assertEquals(fget(mget(1,1),3),true)
    Mock.flags:set(4, {1})
    Mock.tileMap:setGrid({
        {4,4,4,4},
        {4,1,1,4},
        {4,1,1,4},
        {4,4,4,4}
    })
    luaunit.assertEquals(fget(4,1),true)
    luaunit.assertEquals(fget(mget(1,1),1),true)
end

os.exit( luaunit.LuaUnit.run() )