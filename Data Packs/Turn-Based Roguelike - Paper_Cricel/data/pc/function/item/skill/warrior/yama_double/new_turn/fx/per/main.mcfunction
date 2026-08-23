
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches ..10 at @s run tp @s ~ ~0.3 ~

rotate @s ~7.5 ~

execute if score @s pc.duration matches 40.. at @s run tp @s ~ ~-0.25 ~
execute if score @s pc.duration matches 45.. at @s run tp @s ~ ~-0.25 ~
execute if score @s pc.duration matches 50.. at @s run tp @s ~ ~-0.25 ~

execute rotated as @s on passengers run rotate @s ~ ~

execute if score @s pc.duration matches 70.. at @s run function pc:sys/void