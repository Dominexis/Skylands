execute if block ~ ~-1 ~ air run scoreboard players set @s[scores={AWBTimer=-1}] AWBTimer 10
execute if block ~ ~-1 ~ barrier run scoreboard players remove @s[scores={AWBTimer=1..}] AWBTimer 1
execute if entity @s[scores={Jumped=1}] run scoreboard players set @s AWBTimer 0

fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace barrier
execute if entity @s[scores={AWBTimer=1..}] run fill ~ ~-1 ~ ~ ~-1 ~ barrier replace air
execute if entity @s[scores={AWBTimer=1..}] run particle minecraft:small_gust ~ ~-0.1 ~ 0.25 0 0.25 0.008 20
execute if entity @s[scores={AWBTimer=1}] run playsound minecraft:entity.breeze.idle_air player @a ~ ~ ~ 0.15 1.25
execute if entity @s[scores={AWBTimer=4}] run playsound minecraft:entity.breeze.idle_air player @a ~ ~ ~ 0.15 1.25
execute if entity @s[scores={AWBTimer=7}] run playsound minecraft:entity.breeze.idle_air player @a ~ ~ ~ 0.15 1.25
execute if entity @s[scores={AWBTimer=10}] run playsound minecraft:entity.breeze.idle_air player @a ~ ~ ~ 0.15 1.25