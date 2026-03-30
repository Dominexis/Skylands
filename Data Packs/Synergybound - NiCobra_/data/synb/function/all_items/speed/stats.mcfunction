scoreboard players add @s synb.IEStat.MovSpeed 20
scoreboard players operation #s synb.Tmp.Expr = @s synb.Item.speed.buildup
scoreboard players operation #s synb.Tmp.Expr /= num3 synb.Const
scoreboard players remove #s synb.Tmp.Expr 15
execute if score #s synb.Tmp.Expr matches 1.. run scoreboard players operation @s synb.IEStat.MovSpeed += #s synb.Tmp.Expr