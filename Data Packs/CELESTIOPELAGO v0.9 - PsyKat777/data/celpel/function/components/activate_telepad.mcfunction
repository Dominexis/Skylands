# Activates the toggleable telepad
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.lever_telepad 1
execute positioned -1810 221 -6407 run playsound block.beacon.activate block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5 1.05
setblock -1810 220 -6406 oxidized_copper_bulb[lit=true]
setblock -1810 221 -6408 copper_bulb[lit=true]
particle end_rod -1810 221.25 -6406 0.75 0.25 0.75 0.1 10
particle electric_spark -1810 221.25 -6408 0.75 0.25 0.75 0.5 25
particle end_rod -1810 222.25 -6408 0.75 0.25 0.75 0.1 10
particle electric_spark -1810 222.25 -6408 0.75 0.25 0.75 0.5 25