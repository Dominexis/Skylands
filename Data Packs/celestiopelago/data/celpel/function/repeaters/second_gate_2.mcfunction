# Opens the second gate
fill -1831 198 -6283 -1831 199 -6283 air
execute positioned -1831 199 -6283 run playsound block.piston.contract block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.7
schedule function celpel:strings/one_liners/3 10t

# Prepares to play voice lines
function celpel:strings/load_platforms