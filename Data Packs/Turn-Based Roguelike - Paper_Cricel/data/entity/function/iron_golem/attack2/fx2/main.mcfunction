
scoreboard players add @s pc.duration 1

tp @s ~ ~-1.5 ~

execute at @s if score @s pc.duration matches 20.. run function entity:iron_golem/attack2/fx2/clear