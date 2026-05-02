# Unfolds part of the ladder.
kill @e[type=spectral_arrow,x=-1775,y=226,z=-6376,distance=..250]
setblock -1792 247 -6405 cut_copper_stairs
setblock -1792 246 -6405 copper_trapdoor[half=top, open=true]
setblock -1792 246 -6404 ladder[facing=south]
execute positioned -1792 247 -6405 run playsound minecraft:entity.wind_charge.wind_burst block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.75
schedule function celpel:targets/ladder_2 3t