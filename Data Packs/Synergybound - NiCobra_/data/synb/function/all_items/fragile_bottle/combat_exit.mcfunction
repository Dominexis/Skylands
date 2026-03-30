execute if score @s synb.IEExecCount.fragile_bottle matches 2.. run return 0
execute if score @s synb.Item.fragile_bottle.nohit matches 1 run scoreboard players add @s synb.Item.fragile_bottle.count 1
execute if score @s synb.Item.fragile_bottle.nohit matches 1 run playsound minecraft:block.bell.resonate player @s ~ ~ ~ 2 2
scoreboard players reset @s synb.Item.fragile_bottle.nohit