
# Detect if a mob is hooked
scoreboard players set @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/weapon_harvest,scores={sanct.thrown_book_time=1}] sanct.thrown_book_time 0
execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:fishing_bobber] positioned ~ ~-1.31 ~ run scoreboard players set @e[type=#sanct:spell/weapon_harvest,distance=..0.3,limit=1] sanct.thrown_book_time 1
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/weapon_harvest,scores={sanct.thrown_book_time=1}] at @s anchored eyes run particle minecraft:fishing ^ ^ ^ 0.4 0.4 0.4 0 1

execute if entity @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sanct:spell/weapon_harvest_holding,limit=1] run schedule function sanct:spell/alchemy/weapon_harvest/clock 3