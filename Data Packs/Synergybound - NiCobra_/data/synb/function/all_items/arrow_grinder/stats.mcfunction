scoreboard players add @s synb.IEStat.HP 2
scoreboard players add @s synb.IEStat.Ammo 4
execute if score @s synb.IEExecCount.arrow_grinder matches 1 run scoreboard players operation @s synb.IEStat.Dmg += @s synb.Item.arrow_grinder.stacks