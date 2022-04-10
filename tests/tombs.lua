luaunit = require('luaunit')
require "objects.Tombs"
require "helper"

function testTombs()
    local tomb = Tomb:init({x = 3, y = 3})
    print(Debug.GobalString)
    print(Debug.dump(tomb:isSurrounded()))
    -- luaunit.assertEquals(tomb:isSurrounded(),true)
end

os.exit( luaunit.LuaUnit.run() )