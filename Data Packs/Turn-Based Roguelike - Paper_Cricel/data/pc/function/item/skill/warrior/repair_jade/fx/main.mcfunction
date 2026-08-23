
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 2.. run data merge entity @s {transformation:{scale:[1,1,1]},start_interpolation:0,interpolation_duration:5}

rotate @s ~15 ~
execute if score @s pc.duration matches ..5 at @s run tp @s ~ ~0.2 ~
execute if score @s pc.duration matches ..10 at @s run tp @s ~ ~0.2 ~
execute if score @s pc.duration matches 10.. at @s run tp @s ~ ~-0.2 ~
execute if score @s pc.duration matches 15.. at @s run tp @s ~ ~-0.2 ~
execute if score @s pc.duration matches 20.. at @s run tp @s ~ ~-0.2 ~

execute if score @s pc.duration matches 30.. at @s run kill @s