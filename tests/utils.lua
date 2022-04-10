luaunit = require('luaunit')
require 'utils'


function testEvery()
    local allTrue = {
        true, true, true
    }
    -- luaunit.assertEquals(Utils:every(allTrue),true)
    print(Utils.string)
    luaunit.assertEquals(Utils.every(allTrue),true)
end

os.exit( luaunit.LuaUnit.run() )
