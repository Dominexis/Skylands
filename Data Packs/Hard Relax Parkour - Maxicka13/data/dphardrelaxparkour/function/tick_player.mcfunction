# fell out
execute positioned ~-1 0 ~-1 if entity @s[y=-40,dy=-200] run function sl:api/send_to_checkpoint

# Adding falling Player tags dphardrelaxparkour.lost 
# Start Point: -85.5 140 100, first next point: -194 124 44, second next point: -175 117 16
# Area of Pale Garden: first: dx=-108.5, dy=-100, dz=-52; second: dx=-61, dy=-100, dz=-80
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.firstpoint,limit=1] if entity @s[tag=dphardrelaxparkour.player, dx=-108.5, dy=-100, dz=-56] if score @s dphardrelaxparkour.level matches 3..6 run function dphardrelaxparkour:palegarden/palegarden
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.firstpoint,limit=1] if entity @s[tag=dphardrelaxparkour.player, dx=-88.5, dy=-100, dz=-84] if score @s dphardrelaxparkour.level matches 3..6 run function dphardrelaxparkour:palegarden/palegarden

# Area of leaving Pale Garden: -113 145 96 x -113 145 4. x+
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.leavingpg,limit=1] if entity @s[tag=dphardrelaxparkour.lost, dx=100, dy=-100, dz=-150] if score @s dphardrelaxparkour.level matches 3..6 run function dphardrelaxparkour:palegarden/leaving

# Level map: 0 start location, 1 = first parkour, 2 = city, Pagoda, 3-5 = Pale Garden, 6 = sky parkour
execute at @e[tag=dphardrelaxparkour.spawnpoint_0,limit=1] if entity @s[dz=5,dy=2] run function dphardrelaxparkour:main_door/close_door
execute at @e[tag=dphardrelaxparkour.spawnpoint_1,limit=1] if entity @s[dx=5,dz=5,dy=2] run scoreboard players set @s dphardrelaxparkour.level 1
execute at @e[tag=dphardrelaxparkour.spawnpoint_2,limit=1] if entity @s[distance=..3] run scoreboard players set @s dphardrelaxparkour.level 2
execute if entity @e[tag=dphardrelaxparkour.spawnpoint_3,limit=1,distance=..1] if score @s dphardrelaxparkour.level matches 2 run scoreboard players set @s dphardrelaxparkour.level 3

# Enter or Exit from mine
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.entermine,limit=1] if entity @s[dz=-5] run tp @s ~-4 ~ ~-3
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.exitmine,limit=1] if entity @s[dz=-5] run tp @s ~4 ~ ~-3

# Exit from Pale garden
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.bigportal,limit=1] if entity @s[tag=dphardrelaxparkour.lost,dx=9,dy=9] run function dphardrelaxparkour:palegarden/exit/big_portal
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.portal,limit=1] if entity @s[tag=dphardrelaxparkour.lost,dx=3,dy=3] run function dphardrelaxparkour:palegarden/exit/portal
execute at @e[type=minecraft:marker,tag=dphardrelaxparkour.smallportal,limit=1] if entity @s[tag=dphardrelaxparkour.lost,dy=2] run function dphardrelaxparkour:palegarden/exit/small_portal

# main effects
effect give @s saturation infinite 5 true
execute if entity @s[tag=dphardrelaxparkour.lost] run effect give @s darkness infinite 4 true

# effects from some block
execute if block ~ ~-1 ~ light_gray_wool if score @s dphardrelaxparkour.level matches 3..6 run tp @e[tag=dphardrelaxparkour.spawnpoint_3,limit=1]