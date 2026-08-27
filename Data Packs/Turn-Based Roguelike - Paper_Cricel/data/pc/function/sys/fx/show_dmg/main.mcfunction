
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches ..5 at @s run tp @s ~ ~0.1 ~
execute if score @s pc.duration matches ..10 at @s run tp @s ~ ~0.1 ~
execute if score @s pc.duration matches 10.. at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.duration matches 15.. at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.duration matches 20.. at @s run tp @s ~ ~-0.1 ~
execute if score @s pc.duration matches 25.. at @s run tp @s ~ ~-0.1 ~

execute at @s run tp ^ ^ ^0.1

execute unless block ~ ~0.5 ~ #pc:sys/transparent run kill @s
execute if score @s pc.duration matches 100.. run kill @s