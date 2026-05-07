# interaction 
execute as @e[type=minecraft:interaction,tag=day] if data entity @s interaction run function dp:settings/day_button
execute as @e[type=minecraft:interaction,tag=day] if data entity @s attack run function dp:settings/day_button

execute as @e[type=minecraft:interaction,tag=night] if data entity @s interaction run function dp:settings/night_button
execute as @e[type=minecraft:interaction,tag=night] if data entity @s attack run function dp:settings/night_button

execute as @e[type=minecraft:interaction,tag=isgmadv_button] if data entity @s interaction run function dp:settings/is_gmadventure/is_gmadventure
execute as @e[type=minecraft:interaction,tag=isgmadv_button] if data entity @s attack run function dp:settings/is_gmadventure/is_gmadventure

execute as @e[type=minecraft:interaction,tag=checkpoints_button] if data entity @s interaction run function dp:settings/is_checkpoints/is_checkpoints
execute as @e[type=minecraft:interaction,tag=checkpoints_button] if data entity @s attack run function dp:settings/is_checkpoints/is_checkpoints

execute as @e[type=minecraft:interaction,tag=reset_button] if data entity @s interaction run function dp:settings/reset
execute as @e[type=minecraft:interaction,tag=reset_button] if data entity @s attack run function dp:settings/reset

execute as @e[type=minecraft:interaction,tag=startButton] if data entity @s interaction run function dp:main_door/open_door
execute as @e[type=minecraft:interaction,tag=startButton] if data entity @s attack run function dp:main_door/open_door

# Links
execute as @e[type=minecraft:interaction,tag=youtube] if data entity @s interaction run function dp:links/youtube
execute as @e[type=minecraft:interaction,tag=youtube] if data entity @s attack run function dp:links/youtube

execute as @e[type=minecraft:interaction,tag=planet] if data entity @s interaction run function dp:links/planet
execute as @e[type=minecraft:interaction,tag=planet] if data entity @s attack run function dp:links/planet

execute as @e[type=minecraft:interaction,tag=inside] if data entity @s interaction run function dp:links/inside
execute as @e[type=minecraft:interaction,tag=inside] if data entity @s attack run function dp:links/inside