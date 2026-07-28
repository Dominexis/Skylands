
scoreboard players add @s pc.duration 1

tp @s ~-1 ~-2 ~1

execute if score @s pc.duration matches 10.. run function item:skill/warrior/blazing_meteorite/fx/clear

# fx
particle flame ~ ~ ~ 0.4 0.4 0.4 0.1 5 force
particle trial_spawner_detection ~ ~ ~ 0.4 0.4 0.4 0.1 5 force