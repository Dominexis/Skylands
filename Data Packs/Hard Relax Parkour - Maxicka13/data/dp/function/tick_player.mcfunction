execute if score $bool isGMAdventure matches 1 run gamemode adventure @s

# Adding falling Player in Lost Player
# Start Point: -85.5 140 100, first next point: -194 124 44, second next point: -175 117 16
# Area of Pale Garden: first: dx=-108.5, dy=-100, dz=-52; second: dx=-61, dy=-100, dz=-80
execute at @e[type=minecraft:marker,tag=firstPoint,limit=1] if entity @s[team=player, dx=-108.5, dy=-100, dz=-56] if score @s level matches 3..6 run function dp:palegarden/palegarden
execute at @e[type=minecraft:marker,tag=firstPoint,limit=1] if entity @s[team=player, dx=-88.5, dy=-100, dz=-84] if score @s level matches 3..6 run function dp:palegarden/palegarden

# Area of leaving Pale Garden: -113 145 96 x -113 145 4. x+
execute at @e[type=minecraft:marker,tag=leavingPG,limit=1] if entity @s[team=lost, dx=100, dy=-100, dz=-150] if score @s level matches 3..6 run function dp:palegarden/leaving

# Level map: 0 start location, 1 = first parkour, 2 = city, Pagoda, 3-5 = Pale Garden, 6 = sky parkour
execute at @e[tag=spawnpoint_0,limit=1] if entity @s[dz=5,dy=2] run function dp:main_door/close_door

execute at @e[tag=spawnpoint_1,limit=1] if entity @s[dx=5,dz=5,dy=2] if score $bool isCheckpoints matches 1 run spawnpoint @s ~ ~ ~
execute at @e[tag=spawnpoint_1,limit=1] if entity @s[dx=5,dz=5,dy=2] run scoreboard players set @s level 1

execute at @e[tag=spawnpoint_2,limit=1] if entity @s[distance=..3] if score $bool isCheckpoints matches 1 run spawnpoint @s ~ ~ ~ 145 -30
execute at @e[tag=spawnpoint_2,limit=1] if entity @s[distance=..3] run scoreboard players set @s level 2

execute at @e[tag=SpawnpointPagoda,limit=1] if entity @s[distance=..5] if score $bool isCheckpoints matches 1 run spawnpoint @s ~3 ~ ~3 135 -45

execute if entity @e[tag=spawnpoint_3,limit=1,distance=..1] if score @s level matches 2 run scoreboard players set @s level 3

# Enter or Exit from mine
execute at @e[type=minecraft:marker,tag=enterMine,limit=1] if entity @s[dz=-5] run tp @s ~-4 ~ ~-3
execute at @e[type=minecraft:marker,tag=exitMine,limit=1] if entity @s[dz=-5] run tp @s ~4 ~ ~-3

# Exit from Pale garden
execute at @e[type=minecraft:marker,tag=bigPortal,limit=1] if entity @s[team=lost,dx=9,dy=9] run function dp:palegarden/exit/big_portal
execute at @e[type=minecraft:marker,tag=portal,limit=1] if entity @s[team=lost,dx=3,dy=3] run function dp:palegarden/exit/portal
execute at @e[type=minecraft:marker,tag=smallPortal,limit=1] if entity @s[team=lost,dy=2] run function dp:palegarden/exit/small_portal

# main effects
effect give @s saturation infinite 5 true
execute if entity @s[team=lost] run effect give @s darkness infinite 4 true

# effects from some block
execute if block ~ ~-1 ~ light_gray_wool if score @s level matches 3..6 run tp @e[tag=spawnpoint_3,limit=1]

# end game
execute at @e[type=minecraft:marker,tag=ExitMap,limit=1] if entity @s[dx=-5] run tp @s @e[tag=Start,limit=1]