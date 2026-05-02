# Adjusts the redstone lamps on the lower pillar
fill -1690 260 -6435 -1690 266 -6435 air

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 1..7 positioned -1690 259 -6435 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5
execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 1..7 positioned -1690 259 -6435 run playsound block.note_block.iron_xylophone block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5 0.5

execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 1..7 run scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower 1

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 1 run setblock -1690 260 -6435 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 2 run setblock -1690 261 -6435 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 3 run setblock -1690 262 -6435 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 4 run setblock -1690 263 -6435 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 5 run setblock -1690 264 -6435 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 6 run setblock -1690 265 -6435 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 7 run setblock -1690 266 -6435 redstone_block

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower matches 3 run schedule function celpel:pillars/ding 1s