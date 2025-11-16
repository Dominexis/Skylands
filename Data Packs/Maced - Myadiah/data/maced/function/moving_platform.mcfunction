## Shulker Rotation
execute positioned 1792 64 256 as @e[type=minecraft:shulker,distance=..250,tag=maced.moving_platform] at @s run data modify entity @s Rotation set from entity @n[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] Rotation

## Direction Selection
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-3 ~ minecraft:red_wool run rotate @s 180 0
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-3 ~ minecraft:orange_wool run rotate @s -90 0
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-3 ~ minecraft:blue_wool run rotate @s 0 0
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-3 ~ minecraft:cyan_wool run rotate @s 90 0

## Movement Speed
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-2 ~ minecraft:white_wool run tp @s ^ ^ ^0.0125
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-2 ~ minecraft:light_gray_wool run tp @s ^ ^ ^0.09
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-2 ~ minecraft:gray_wool run tp @s ^ ^ ^0.18
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-2 ~ minecraft:black_wool run tp @s ^ ^ ^0.27

execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,distance=..250,tag=maced.moving_platform] at @s if block ~ ~-2 ~ #minecraft:wool unless block ~ ~-2 ~ minecraft:white_wool unless block ~ ~-2 ~ minecraft:light_gray_wool unless block ~ ~-2 ~ minecraft:gray_wool unless block ~ ~-2 ~ minecraft:black_wool run tp @s ^ ^ ^0.0125