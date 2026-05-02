# Opens the huge door part of the way
fill -1791 220 -6406 -1793 224 -6406 air
setblock -1794 220 -6406 air
setblock -1790 221 -6406 air
setblock -1794 222 -6406 air
setblock -1790 223 -6406 air
setblock -1794 224 -6406 air
execute positioned -1792 222 -6406 run playsound block.piston.contract block @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] ~ ~ ~ 2.5 0.7
schedule function celpel:components/door_3 12t