# Activates the toggleable telepad
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.lever_telepad 0
execute positioned -1810 221 -6407 run playsound block.beacon.deactivate block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.5 1.05
setblock -1810 220 -6406 oxidized_copper_bulb[lit=false]
setblock -1810 221 -6408 copper_bulb[lit=false]