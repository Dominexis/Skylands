scoreboard players add @s synb.IEStat.Magic 2

scoreboard players operation #val synb.Tmp.Expr = @s synb.Item.fragile_bottle.count
scoreboard players operation #val synb.Tmp.Expr *= num7 synb.Const
scoreboard players operation @s synb.IEStat.Dmg += #val synb.Tmp.Expr

scoreboard players operation #val synb.Tmp.Expr = @s synb.Item.fragile_bottle.count
scoreboard players operation #val synb.Tmp.Expr *= num20 synb.Const
scoreboard players operation @s synb.IEStat.AtkSpeed += #val synb.Tmp.Expr