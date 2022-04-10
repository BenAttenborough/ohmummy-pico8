luaunit = require('luaunit')
require "tests.testhelpers"
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

function testCheck()
    local tomb = Tomb:init({x = 1, y = 1})
    -- print(Debug.dump(tomb["x"]))
    luaunit.assertEquals(tomb:check(),true)
    local tomb2 = Tomb:init({x = 1, y = 2})
    luaunit.assertEquals(tomb2:check(),true)
end

os.exit( luaunit.LuaUnit.run() )