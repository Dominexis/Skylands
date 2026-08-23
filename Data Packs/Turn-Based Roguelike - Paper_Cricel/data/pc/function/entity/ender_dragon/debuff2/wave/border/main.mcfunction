
scoreboard players add @s pc.duration 1
execute if entity @s[tag=pc.entity.ender_dragon.debuff2.wave.border.clear] run return run function pc:entity/ender_dragon/debuff2/wave/border/clear/main

execute if score @s pc.duration matches 2.. run function pc:entity/ender_dragon/debuff2/wave/border/spin/main
execute if score @s pc.duration matches ..1 run return fail

data merge entity @s {transformation:{translation:[0.4,2,25]},start_interpolation:0,interpolation_duration:50,teleport_duration:2}
execute on passengers run data merge entity @s {transformation:{translation:[0.4,2,25]},start_interpolation:0,interpolation_duration:50,teleport_duration:2}