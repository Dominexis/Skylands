scoreboard players add @s synb.IEStat.Magic 1
scoreboard players operation #dmg synb.Tmp.Expr = @s synb.Item.foreign_goods.reroll_count
scoreboard players operation #dmg synb.Tmp.Expr *= num20 synb.Const
scoreboard players operation @s synb.IEStat.AtkSpeed += #dmg synb.Tmp.Expr