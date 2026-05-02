# Adjusts the redstone lamps on the upper pillar
fill -1690 260 -6391 -1690 268 -6391 air

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 1..9 positioned -1690 259 -6391 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5
execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 1..9 positioned -1690 259 -6391 run playsound block.note_block.iron_xylophone block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5 0.5

execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 1..9 run scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper 1

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 1 run setblock -1690 260 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 2 run setblock -1690 261 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 3 run setblock -1690 262 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 4 run setblock -1690 263 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 5 run setblock -1690 264 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 6 run setblock -1690 265 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 7 run setblock -1690 266 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 8 run setblock -1690 267 -6391 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 9 run setblock -1690 268 -6391 redstone_block

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper matches 8 run schedule function celpel:pillars/ding 1s