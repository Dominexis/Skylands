
# Repeat clock
schedule function sanct:spell/ritual/spring_health/clock 300

# Return if spring count is at maximum
execute store result score #var sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:area_effect_cloud,tag=sanct.spring_health]
execute if score #var sanct.numbers >= #spring_health sanct.numbers run return 1

# Randomize whether a spring spawn occurs this tick
execute unless predicate sanct:spell/spring_health_chance run return run scoreboard players add #spring_health_skips sanct.numbers 1

# Check if there is an undead that qualifies to spawn a spring
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/spring_health,predicate=sanct:on_ground] at @s unless block ~ ~-0.2 ~ #sanct:empty unless entity @e[type=minecraft:marker,distance=..3,tag=sanct.spawner,limit=1] unless entity @a[distance=..12,limit=1] unless entity @e[type=minecraft:area_effect_cloud,distance=..12,tag=sanct.spring_health,limit=1] run tag @s add sanct.can_spawn_spring
execute unless entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/spring_health,tag=sanct.can_spawn_spring,limit=1] run return run scoreboard players add #spring_health_skips sanct.numbers 1

# Spawn spring
execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/spring_health,tag=sanct.can_spawn_spring,sort=random,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sanct.spring_health"],custom_particle:{type:"minecraft:dust_pillar",block_state:"minecraft:cherry_leaves"},Radius:0.7f,Duration:2400}
scoreboard players operation #spring_health_skips sanct.numbers = #spring_health sanct.numbers
tag @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/spring_health,tag=sanct.can_spawn_spring] remove sanct.can_spawn_spring