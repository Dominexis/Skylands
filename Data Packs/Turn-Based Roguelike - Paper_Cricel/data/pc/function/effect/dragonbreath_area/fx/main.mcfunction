
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 5 positioned ~ ~0.1 ~ run function pc:effect/dragonbreath_area/fx/2
execute if predicate {condition:"random_chance",chance:0.025} run function pc:effect/dragonbreath_area/fx/dust/use

execute if score @s pc.duration matches 10.. run scoreboard players reset @s pc.duration