scoreboard players set #period synb.Tmp.Expr 25

scoreboard players operation #reduction synb.Tmp.Expr = @s synb.IEStat.Magic
scoreboard players operation #reduction synb.Tmp.Expr *= num3 synb.Const
scoreboard players operation #reduction synb.Tmp.Expr /= num2 synb.Const

scoreboard players operation #period synb.Tmp.Expr -= #reduction synb.Tmp.Expr

scoreboard players add @s synb.Item.vibration.rythm 1
execute if score @s synb.Item.vibration.rythm >= #period synb.Tmp.Expr run function synb:all_items/vibration/_impulse