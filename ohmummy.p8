pico-8 cartridge // http://www.pico-8.com
version 35
__lua__
#include globals.lua
#include main.lua
#include debug.lua
#include map.lua
#include player.lua
__gfx__
000000009999999900000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000009999999900000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007009999999900000000aaaaaaaa050555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770009999999900000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770009999999900000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007009999999900000000aaaaaaaa050555500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000009999999900000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000009999999900000000aaaaaaaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000cccc0000cccc0000cccc000ccccc000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000ccccccc0cccccc00cccccc0ccccccc00066d00000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000aa9090009aa909909999000909aa000066600000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000a99990accccaaaacccca09999a0000006000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ccc9900acccca00acccca0099ccc000066666000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000cc0cc009c00c0000c00c900cc0cc000066600000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000009cc0ccc000900c0000c009000ccc0cc90060600000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000099000990000090000900000990009900060600000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999997777779999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999997999979999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999997999979999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999997999979999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999997999979999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999997777779999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000999999999999999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0001000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0001010001010001010001010001010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
