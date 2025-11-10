setblock -1282 -5 -1303 minecraft:waxed_oxidized_copper_bulb[lit=true]
function piecewiselantern:lighthouse_door_check
tp @p[x=-1304,y=-10,z=-1273,dx=2,dy=2,dz=2,team=sl.player] -1281 -5 -1290
playsound piecewiselantern:sfx.puzzle_complete master @p[x=-1281,y=-5,z=-1290,dx=2,dy=2,dz=2,team=sl.player] -1281 -5 -1290 1 1 0
