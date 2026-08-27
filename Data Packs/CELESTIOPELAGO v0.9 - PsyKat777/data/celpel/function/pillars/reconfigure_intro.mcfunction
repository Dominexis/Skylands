# Adjusts the redstone lamps on the intro pillar
fill -1712 255 -6412 -1712 259 -6412 air

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 1..5 positioned -1712 254 -6412 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5
execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 1..5 positioned -1712 254 -6412 run playsound block.note_block.iron_xylophone block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5 0.5

execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 1..5 run scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro 1

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 1 run setblock -1712 255 -6412 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 2 run setblock -1712 256 -6412 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 3 run setblock -1712 257 -6412 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 4 run setblock -1712 258 -6412 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 5 run setblock -1712 259 -6412 redstone_block

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro matches 4 run schedule function celpel:pillars/ding 1s