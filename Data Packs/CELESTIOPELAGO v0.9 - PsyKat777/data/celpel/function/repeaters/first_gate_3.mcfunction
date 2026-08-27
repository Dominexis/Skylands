# Opens the first gate
fill -1819 198 -6271 -1819 199 -6271 air
execute positioned -1819 199 -6271 run playsound block.piston.contract block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.7
schedule function celpel:strings/one_liners/2 10t