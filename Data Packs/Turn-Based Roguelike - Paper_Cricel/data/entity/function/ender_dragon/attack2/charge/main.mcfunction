
scoreboard players add @s pc.duration 1

execute at @s run function entity:ender_dragon/attack2/charge/3
execute at @s run function entity:ender_dragon/attack2/charge/3

execute positioned ~ ~-0.75 ~ if entity @e[tag=pc.entity.ender_dragon,type=minecraft:bee,distance=..0.5,limit=1] run kill @s
execute if score @s pc.duration matches 100.. run kill @s