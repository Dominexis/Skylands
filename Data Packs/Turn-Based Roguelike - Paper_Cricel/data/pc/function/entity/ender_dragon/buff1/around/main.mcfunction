
execute store result score #random pc.main run random value 1..3
execute if score #random pc.main matches 1 anchored eyes positioned ~ ~-0.75 ~ facing entity @n[tag=pc.entity.ender_dragon,type=minecraft:bee,distance=..100] eyes positioned ~ ~0.75 ~ positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~2.5 ~10
execute if score #random pc.main matches 2 anchored eyes positioned ~ ~-0.75 ~ facing entity @n[tag=pc.entity.ender_dragon,type=minecraft:bee,distance=..100] eyes positioned ~ ~0.75 ~ positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~2.5 ~5
execute if score #random pc.main matches 3 anchored eyes positioned ~ ~-0.75 ~ facing entity @n[tag=pc.entity.ender_dragon,type=minecraft:bee,distance=..100] eyes positioned ~ ~0.75 ~ positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run rotate @s ~2.5 ~0

execute at @s run function pc:entity/ender_dragon/buff1/around/2
execute at @s run function pc:entity/ender_dragon/buff1/around/2
execute at @s run function pc:entity/ender_dragon/buff1/around/2
execute at @s run function pc:entity/ender_dragon/buff1/around/2
execute at @s run function pc:entity/ender_dragon/buff1/around/2
execute at @s run function pc:entity/ender_dragon/buff1/around/2

execute unless entity @e[tag=pc.entity.ender_dragon,type=minecraft:bee,distance=..60,limit=1] run scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 60.. run kill @s