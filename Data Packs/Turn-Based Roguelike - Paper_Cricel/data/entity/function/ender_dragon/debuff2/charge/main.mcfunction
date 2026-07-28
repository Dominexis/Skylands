
scoreboard players add @s pc.duration 1

execute at @s run function entity:ender_dragon/debuff2/charge/2
execute at @s run function entity:ender_dragon/debuff2/charge/2

execute if score @s pc.duration matches 100.. run kill @s