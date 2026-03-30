
# Return if there are too many mobs
execute store result score #var sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:undead]
execute if score #var sanct.numbers matches 100.. run return run tellraw @s "§cSome undead must be killed before more can be summoned"

# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:bone 0
data modify storage sanct:storage root.material_price.price set value 4b
execute unless predicate sanct:spell/check_affordable run return run tellraw @s "§cYou don't have the materials to cast §4§lRAISE VAMPIRE"

# Pay price
clear @s minecraft:bone 4

# Disable auto-spawn
scoreboard players set #vampire_summoned sanct.numbers 1

# Spawn vampires
scoreboard players operation #summon_vampire_iterator sanct.numbers = #summon_vampire_count sanct.numbers
execute at @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] run tag @e[type=minecraft:marker,tag=sanct.spawner,distance=..8] add sanct.block_spawn
execute as @n[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=!sanct.block_spawn,sort=random] at @s run function sanct:spell/summon/summon_vampire/summon
tag @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:marker,tag=sanct.spawner,tag=sanct.block_spawn] remove sanct.block_spawn

schedule function sanct:mob/vampire/clock 10

tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"blue"},{"selector":"@s"},{"text":" casts §4§lRAISE VAMPIRE"}]