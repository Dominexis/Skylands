# Tests whether to play a sound effect for when a copper bulb turns on or off

execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] if block -1824 200 -6271 copper_bulb[lit=true] if score @s celpel.bulb_1 matches 0 run function celpel:repeaters/bulb1_on
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] if block -1824 200 -6271 copper_bulb[lit=false] if score @s celpel.bulb_1 matches 1 run function celpel:repeaters/bulb1_off
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] if block -1831 200 -6264 copper_bulb[lit=true] if score @s celpel.bulb_2 matches 0 run function celpel:repeaters/bulb2_on
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] if block -1831 200 -6264 copper_bulb[lit=false] if score @s celpel.bulb_2 matches 1 run function celpel:repeaters/bulb2_off
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] if block -1838 200 -6271 copper_bulb[lit=true] if score @s celpel.bulb_3 matches 0 run function celpel:repeaters/bulb3_on
execute as @r[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] if block -1838 200 -6271 copper_bulb[lit=false] if score @s celpel.bulb_3 matches 1 run function celpel:repeaters/bulb3_off