# Opens the gate
fill -1694 256 -6412 -1694 257 -6412 air
execute positioned -1694 257 -6412 run playsound block.piston.contract block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 1.7
schedule function celpel:strings/one_liners/4 10t