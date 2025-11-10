execute unless score resettingmap piecewiselantern.data matches 1 run scoreboard players add campfires piecewiselantern.data 1
execute unless score resettingmap piecewiselantern.data matches 1 as @p[team=sl.player, x=-1342, y=-10, z=-1360, dx=124, dy=15, dz=126] at @s run playsound piecewiselantern:sfx.campfire_increment master @s ~ ~ ~ 1 1 0
# execute unless score resettingmap piecewiselantern.data matches 1 run tellraw @p[team=sl.player, x=-1342, y=-10, z=-1360, dx=124, dy=15, dz=126] [{"text":"Campfire "}, {"score":{"name":"campfires","objective":"piecewiselantern.data"}}, {"text":" of 5"}]

execute unless score resettingmap piecewiselantern.data matches 1 if score campfires piecewiselantern.data matches 1 run setblock -1270 -3 -1307 minecraft:waxed_oxidized_copper_bulb[lit=true]
execute unless score resettingmap piecewiselantern.data matches 1 if score campfires piecewiselantern.data matches 2 run setblock -1270 -3 -1305 minecraft:waxed_oxidized_copper_bulb[lit=true]
execute unless score resettingmap piecewiselantern.data matches 1 if score campfires piecewiselantern.data matches 3 run setblock -1270 -3 -1303 minecraft:waxed_oxidized_copper_bulb[lit=true]
execute unless score resettingmap piecewiselantern.data matches 1 if score campfires piecewiselantern.data matches 4 run setblock -1270 -3 -1301 minecraft:waxed_oxidized_copper_bulb[lit=true]
execute unless score resettingmap piecewiselantern.data matches 1 if score campfires piecewiselantern.data matches 5 run setblock -1270 -3 -1299 minecraft:waxed_oxidized_copper_bulb[lit=true]