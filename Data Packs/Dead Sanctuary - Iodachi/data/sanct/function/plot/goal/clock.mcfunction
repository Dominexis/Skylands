
schedule function sanct:plot/goal/clock 20

# Effects
execute if predicate sanct:lightning_chance run summon minecraft:lightning_bolt -2318 98 2313


# Stop mobs from spawning near players
execute at @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] run tag @e[type=minecraft:marker,tag=sanct.spawner,distance=..8] add sanct.block_spawn

# Spawn zombies
execute store result score #var sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie]
execute if score #var sanct.numbers matches ..50 at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=!sanct.block_spawn,limit=1,sort=random] run function sanct:mob/zombie/spawn
execute if score #var sanct.numbers matches 0 run schedule function sanct:mob/zombie/leap/clock 10

# Spawn skeletons
execute store result score #var sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:skeleton]
execute if score #var sanct.numbers matches ..20 at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=!sanct.block_spawn,limit=1,sort=random] run function sanct:mob/skeleton/spawn

# Spawn vampires
execute store result score #var sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:vampire/main]
execute if score #var sanct.numbers matches ..8 at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=!sanct.block_spawn,limit=1,sort=random] run function sanct:mob/vampire/spawn
execute if score #var sanct.numbers matches 0 run schedule function sanct:mob/vampire/clock 10

# Reset spawn blocks
tag @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=sanct.block_spawn] remove sanct.block_spawn



# Path to cloud in bottle
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:wolf,tag=sanct.goal_path] at @s run function sanct:plot/goal/path/clock

execute unless score #goal_path sanct.numbers matches 30.. run return run scoreboard players add #goal_path sanct.numbers 1

execute as @r[x=-2559,y=51,z=2049,dx=510,dy=50,dz=510,predicate=sl:player] unless entity @s[x=-2330,y=83,z=2301,dx=23,dy=15,dz=23] at @s unless entity @e[type=minecraft:wolf,tag=sanct.goal_path,distance=..8] run function sanct:plot/goal/path/create