
# Attack 1
execute if entity @s[tag=pc.mob.ender_dragon.attack1] run return run function pc:object/ender_dragon/attack1/motion/main

# Walk 1
execute if entity @s[tag=pc.mob.ender_dragon.walk1] run return run function pc:object/ender_dragon/walk1/main

# Debuff 1
execute if entity @s[tag=pc.mob.ender_dragon.debuff1] run return run function pc:object/ender_dragon/debuff1/main

# Interphase
execute if entity @s[tag=pc.mob.ender_dragon.interphase] run return run function pc:object/ender_dragon/interphase/main

# Idle
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches ..20 run data merge entity @s {transformation:{translation:[0.0f,-0.4f,0.0f]},start_interpolation:0,interpolation_duration:25}
execute if score @s pc.duration matches 21.. run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:25}
execute if score @s pc.duration matches 40.. run scoreboard players reset @s pc.duration