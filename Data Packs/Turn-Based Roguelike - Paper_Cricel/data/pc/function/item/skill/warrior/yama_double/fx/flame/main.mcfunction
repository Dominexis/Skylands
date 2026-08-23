
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 1 run tp @s ~ ~-100 ~
execute if score @s pc.duration matches 6.. run function pc:sys/void