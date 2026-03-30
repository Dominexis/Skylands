execute if score @s synb.IEExecCount.crystal_edge matches 2.. run return 0

execute if score @s synb.Item.cystal_sharp.cd matches 1 run playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 0.8 0.7

scoreboard players remove @s[scores={synb.Item.cystal_sharp.cd=1..}] synb.Item.cystal_sharp.cd 1

execute unless score @s synb.Item.cystal_sharp.cd matches 1.. run particle minecraft:witch ~ ~ ~ 0.5 0 0.5 0.2 1