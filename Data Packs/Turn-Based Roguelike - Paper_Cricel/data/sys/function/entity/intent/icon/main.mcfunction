
execute if entity @s[tag=pc.intent.icon.clear] run return run function sys:entity/intent/icon/clear/main
execute if entity @s[tag=pc.intent.icon.grid] run function sys:entity/intent/icon/grid/main
execute if score @s pc.duration matches 2.. run return fail

scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 2.. run data merge entity @s {transformation:{translation:[0.0f,1.5f,0.0f]},start_interpolation:0,interpolation_duration:3}