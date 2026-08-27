scoreboard players add @s synb.IEStat.HP 2

execute store result score #increase synb.Tmp.Expr run attribute @s minecraft:max_health get
scoreboard players operation #increase synb.Tmp.Expr -= @s synb.Status.Health
scoreboard players operation #increase synb.Tmp.Expr *= num2 synb.Const
scoreboard players operation @s synb.IEStat.Dmg += #increase synb.Tmp.Expr