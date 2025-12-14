## GIVE COINS
execute as @p if score @s attempts matches 1 run give @s minecraft:sunflower 4
execute as @p if score @s attempts matches 2 run give @s minecraft:sunflower 3
execute as @p[distance=..256] if score @s attempts matches 3.. run give @s minecraft:sunflower 2
scoreboard players operation total attempts += @p attempts
scoreboard players reset @a attempts