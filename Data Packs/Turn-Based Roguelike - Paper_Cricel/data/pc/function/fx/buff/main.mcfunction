
# effect
scoreboard players add @s pc.duration 1
execute at @s if score @s pc.duration matches ..2 run tp @s ^ ^ ^0.25
execute at @s if score @s pc.duration matches ..5 run tp @s ^ ^ ^0.25
execute at @s run tp @s ^ ^ ^0.025

execute if score @s pc.duration matches 15 run data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}
execute if score @s pc.duration matches 20 run function pc:void