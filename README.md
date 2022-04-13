# About

Mucking about trying to make a Pico8 game

## testing

`lua tests/<testname.lua>` this uses luaunit

## Logging

`tail -f log.txt`

## Notes

Testing actual Pico8 calls presents a problem, so I am mocking those functions. See mget in `testhelpers.lua` and `tombs.lua` for an example
Pico8 differs slightly from lua, it adds += and -= for example, which poses a further challenghe to testing with traditional tools like lunit
