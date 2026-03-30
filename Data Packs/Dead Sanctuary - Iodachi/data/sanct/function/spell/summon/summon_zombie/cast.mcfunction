
# Return if there are too many mobs
execute store result score #var sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:undead]
execute if score #var sanct.numbers matches 100.. run return run tellraw @s "§cSome undead must be killed before more can be summoned"

# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:rotten_flesh 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to cast §2§lRAISE ZOMBIES"

tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"blue"},{"selector":"@s"},{"text":" casts §2§lRAISE ZOMBIES"}]

# Tutorial spawning locations
execute unless score #tutorial_zombies sanct.numbers matches 1.. run return run function sanct:spell/summon/summon_zombie/first_cast

# Remove zombie armor tags from previously summoned zombies
execute if score #zombie_armor sanct.numbers matches 1.. run tag @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie,tag=sanct.armor_target] remove sanct.armor_target

# Get number of zombies to spawn
scoreboard players operation #summon_zombie_iterator sanct.numbers = #summon_zombie_count sanct.numbers
scoreboard players operation #summon_zombie_iterator sanct.numbers /= #ZOMBIES_PER_GROUP sanct.numbers

# Spawn zombies
execute at @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] run tag @e[type=minecraft:marker,tag=sanct.spawner,distance=..8] add sanct.block_spawn
execute as @n[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=!sanct.block_spawn,sort=random] at @s run function sanct:spell/summon/summon_zombie/summon
tag @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=sanct.block_spawn] remove sanct.block_spawn

# Start zombie mechanics clock
execute if score #zombie_leap sanct.numbers matches 1 run schedule function sanct:mob/zombie/leap/clock 10

# Add zombie armor
execute if score #zombie_armor sanct.numbers matches 1.. as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:zombie,tag=sanct.armor_target,limit=1,sort=random] run function sanct:spell/ritual/zombie_armor/add_armor