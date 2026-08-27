
# Vampire location particles
execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:vampire/main] run particle minecraft:ash ~ ~ ~ 7 7 7 1 300 force
execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:vampire/main] run particle minecraft:ash ~ ~ ~ 5 5 5 1 300

# Creating blood puddles
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=silverfish,predicate=sanct:mob/vampire/targetting_player] at @s run function sanct:mob/vampire/blood/spash

# Damage from blood puddles
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] at @s if entity @e[type=area_effect_cloud,tag=sanct.vampire_splash,distance=..2] run function sanct:mob/vampire/blood/effect

# Vampire blood falls off island
kill @e[x=-2368,y=32,z=2240,dx=126,dy=14,dz=126,type=minecraft:block_display,tag=sanct.vampire]

execute if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:vampire/main,limit=1] run schedule function sanct:mob/vampire/clock 10