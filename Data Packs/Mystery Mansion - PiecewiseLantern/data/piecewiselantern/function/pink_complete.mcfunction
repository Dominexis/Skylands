setblock -1280 -5 -1303 minecraft:waxed_oxidized_copper_bulb[lit=true]
function piecewiselantern:lighthouse_door_check
tp @p[team=sl.player, x=-1274, y=-14, z=-1275, dx=2, dy=2, dz=2] -1281 -5 -1290
playsound piecewiselantern:sfx.puzzle_complete master @p[team=sl.player, x=-1281, y=-5, z=-1290, dx=2, dy=2, dz=2] -1281 -5 -1290 1 1 0
