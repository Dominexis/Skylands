# Adjusts the redstone lamps on the trio pillar
fill -1678 260 -6414 -1678 272 -6414 air

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 1..13 positioned -1678 259 -6414 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5
execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 1..13 positioned -1678 259 -6414 run playsound block.note_block.iron_xylophone block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5 0.5

execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 1..13 run scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio 1

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 1 run setblock -1678 260 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 2 run setblock -1678 261 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 3 run setblock -1678 262 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 4 run setblock -1678 263 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 5 run setblock -1678 264 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 6 run setblock -1678 265 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 7 run setblock -1678 266 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 8 run setblock -1678 267 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 9 run setblock -1678 268 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 10 run setblock -1678 269 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 11 run setblock -1678 270 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 12 run setblock -1678 271 -6414 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 13 run setblock -1678 272 -6414 redstone_block

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio matches 8 run schedule function celpel:pillars/ding 1s