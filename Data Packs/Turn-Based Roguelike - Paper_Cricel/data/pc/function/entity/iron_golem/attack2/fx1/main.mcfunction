
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 20.. run function pc:entity/iron_golem/attack2/fx1/2
execute if score @s pc.duration matches 40.. run function pc:entity/iron_golem/attack2/fx1/clear