
execute if score @s pc.animation matches ..20 run data merge entity @s {transformation:{translation:[0.0f,-0.5f,0.0f]},start_interpolation:0,interpolation_duration:25}
execute if score @s pc.animation matches 21.. run data merge entity @s {transformation:{translation:[0.0f,-1.0f,0.0f]},start_interpolation:0,interpolation_duration:25}

execute if score @s pc.animation matches 40.. run scoreboard players reset @s pc.animation