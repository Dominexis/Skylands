# Adjusts the redstone lamps on the roof pillar
fill -1792 245 -6394 -1792 247 -6394 air

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 1..3 positioned -1792 244 -6394 run playsound block.note_block.bit block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5
execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 1..3 positioned -1792 244 -6394 run playsound block.note_block.iron_xylophone block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5 0.5

execute unless score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 1..3 run scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof 1

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 1 run setblock -1792 245 -6394 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 2 run setblock -1792 246 -6394 redstone_block
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 3 run setblock -1792 247 -6394 redstone_block

execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 2 run schedule function celpel:pillars/ding 1s
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof matches 2 run schedule function celpel:components/chest_slide_1 2s