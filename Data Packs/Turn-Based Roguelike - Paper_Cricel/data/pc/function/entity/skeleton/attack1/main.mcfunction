
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1.5

execute if score @s pc.duration matches 2.. facing entity @s feet run function pc:entity/skeleton/attack1/2
execute if score @s pc.duration matches 20.. run function pc:entity/skeleton/attack1/clear