function sanct:mob/vampire/spawn
tag @s add sanct.block_spawn

execute if score #summon_vampire_iterator sanct.numbers matches ..1 run return 1
scoreboard players remove #summon_vampire_iterator sanct.numbers 1
execute as @n[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=!sanct.block_spawn,sort=random] at @s run function sanct:spell/summon/summon_vampire/summon