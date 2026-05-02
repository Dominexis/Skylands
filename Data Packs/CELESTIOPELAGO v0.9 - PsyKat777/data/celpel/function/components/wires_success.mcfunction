# Does the visual and sound indicator when all wires are placed
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.wires_placed 1
particle minecraft:electric_spark -1792 223.5 -6394 1.65 1.65 0.25 0.5 75
particle minecraft:end_rod -1792 223.5 -6394 1.5 1.5 0.25 0.15 50
execute positioned -1792 223.5 -6394 run playsound block.beacon.activate block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5
execute positioned -1792 223.5 -6394 run playsound block.grindstone.use block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 0.1 0.5