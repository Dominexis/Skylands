## Shulker Rotation
execute positioned 1792 64 256 as @e[type=shulker,tag=maced.moving_platform,distance=..250] at @s run data modify entity @s Rotation set from entity @n[type=armor_stand,tag=maced.moving_platform] Rotation

## Direction Selection
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-3 ~ red_wool run rotate @s 180 0
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-3 ~ orange_wool run rotate @s -90 0
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-3 ~ blue_wool run rotate @s 0 0
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-3 ~ cyan_wool run rotate @s 90 0

## Movement Speed
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-2 ~ white_wool run tp @s ^ ^ ^0.0125
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-2 ~ light_gray_wool run tp @s ^ ^ ^0.09
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-2 ~ gray_wool run tp @s ^ ^ ^0.18
execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-2 ~ black_wool run tp @s ^ ^ ^0.27

execute positioned 1792 64 256 as @e[type=minecraft:armor_stand,tag=maced.moving_platform,distance=..250] at @s if block ~ ~-2 ~ #wool unless block ~ ~-2 ~ white_wool unless block ~ ~-2 ~ light_gray_wool unless block ~ ~-2 ~ gray_wool unless block ~ ~-2 ~ black_wool run tp @s ^ ^ ^0.0125