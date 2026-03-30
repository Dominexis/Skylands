execute if score @s synb.IEExecCount.speed matches 2.. run return 0
execute as @s unless score @s synb.Item.speed.buildup matches 600.. run scoreboard players add @s synb.Item.speed.buildup 2

execute if score @s synb.Item.speed.buildup matches 600 run particle minecraft:flame ~ ~ ~ 0.3 0 0.3 0.01 2