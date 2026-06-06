execute as @a[distance=..300,predicate=sl:player] at @s run function dphardrelaxparkour:tick_player

# Start Door
execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.startButton] if data entity @s interaction run function dphardrelaxparkour:main_door/open_door
execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.startButton] if data entity @s attack run function dphardrelaxparkour:main_door/open_door

# Links
execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.youtube] if data entity @s interaction run function dphardrelaxparkour:links/youtube
execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.youtube] if data entity @s attack run function dphardrelaxparkour:links/youtube

execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.planet] if data entity @s interaction run function dphardrelaxparkour:links/planet
execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.planet] if data entity @s attack run function dphardrelaxparkour:links/planet

execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.inside] if data entity @s interaction run function dphardrelaxparkour:links/inside
execute as @e[type=minecraft:interaction,tag=dphardrelaxparkour.inside] if data entity @s attack run function dphardrelaxparkour:links/inside