
# Player ticks
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] at @s run function sanct:player/tick

# Barrier particles
execute unless score #barrier_unlocked sanct.numbers matches 1.. if score #barrier_particle sanct.numbers matches 1.. if entity @a[x=-2323,y=83,z=2309,dx=9,dy=3,dz=15,limit=1,team=sl.player] run function sanct:plot/goal/barrier/particle

# Totem particles
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:block_display,tag=sanct.totem_particle] at @s positioned ~ ~-1 ~ run function sanct:spell/alchemy/totem/particle

# Weapon harvest bobber check
execute if entity @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sanct:spell/weapon_harvest_holding,limit=1,team=sl.player] run function sanct:spell/alchemy/weapon_harvest/clock