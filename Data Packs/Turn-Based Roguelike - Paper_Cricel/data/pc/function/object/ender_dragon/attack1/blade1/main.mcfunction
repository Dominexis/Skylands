
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 1 run function pc:object/ender_dragon/attack1/blade1/frame/1
execute if score @s pc.duration matches 2 run function pc:object/ender_dragon/attack1/blade1/frame/2
execute if score @s pc.duration matches 3 run function pc:object/ender_dragon/attack1/blade1/frame/3
execute if score @s pc.duration matches 4 run function pc:object/ender_dragon/attack1/blade1/frame/4
execute if score @s pc.duration matches 5 run function pc:object/ender_dragon/attack1/blade1/frame/5

execute if score @s pc.duration matches 15.. run function pc:object/ender_dragon/attack1/blade2/use
execute if score @s pc.duration matches 15.. run kill @s