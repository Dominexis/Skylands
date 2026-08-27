# Rotates the fan
clone -1775 216 -6392 -1779 216 -6396 -1779 217 -6402
execute positioned -1777 217 -6400 run playsound celpel.fan block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.75 1
schedule function celpel:components/blow_2 3t