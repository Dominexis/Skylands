
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches ..50 run function entity:enderman/attack3/fx/2
execute if score @s pc.duration matches 51..60 run function entity:enderman/attack3/fx/3

execute if score @s pc.duration matches 60.. run function entity:enderman/attack3/fx/clear