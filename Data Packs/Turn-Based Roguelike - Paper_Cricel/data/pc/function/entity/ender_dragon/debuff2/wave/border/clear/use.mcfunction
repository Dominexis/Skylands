
tag @s add pc.entity.ender_dragon.debuff2.wave.border.clear
scoreboard players reset @s pc.duration

data merge entity @s {transformation:{translation:[0.4,-3,25]},start_interpolation:0,interpolation_duration:30}
execute on passengers run data merge entity @s {transformation:{translation:[0.4,-3,25]},start_interpolation:0,interpolation_duration:30}