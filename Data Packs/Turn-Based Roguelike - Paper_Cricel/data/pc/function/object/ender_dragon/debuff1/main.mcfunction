
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 1..5 at @s run function pc:object/ender_dragon/debuff1/2
execute if score @s pc.duration matches 1..10 at @s run function pc:object/ender_dragon/debuff1/2
execute if score @s pc.duration matches 1..15 at @s run function pc:object/ender_dragon/debuff1/2

execute if score @s pc.duration matches 21 run function pc:object/ender_dragon/debuff1/ball/use
execute if score @s pc.duration matches 21..23 at @s run tp @s ^ ^ ^-0.5
execute if score @s pc.duration matches 24..26 at @s run tp @s ^ ^ ^0.5
execute if score @s pc.duration matches 31..35 at @s run tp @s ~ ~-0.6 ~
execute if score @s pc.duration matches 36.. run function pc:object/ender_dragon/debuff1/clear