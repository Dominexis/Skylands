# Rotates the fan, and allows a spot where the fan can be turned off when the map is reset
clone -1775 218 -6392 -1779 218 -6396 -1779 217 -6402
execute if score @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.fan_active matches 1 run schedule function celpel:components/blow_1 3t