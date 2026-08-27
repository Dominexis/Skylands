execute store result score #bonus synb.Tmp.Expr run attribute @s minecraft:max_health get
scoreboard players operation #bonus synb.Tmp.Expr /= num16 synb.Const
scoreboard players operation @s synb.IEStat.Reward += #bonus synb.Tmp.Expr

scoreboard players add @s synb.IEStat.Reward 3