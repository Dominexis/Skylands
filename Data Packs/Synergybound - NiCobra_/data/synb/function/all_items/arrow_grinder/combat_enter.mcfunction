scoreboard players operation #stacks synb.Tmp.Expr = @s synb.IEPlayer.CurrentAmmo
scoreboard players operation @s synb.IEPlayer.CurrentAmmo /= num2 synb.Const
scoreboard players operation #stacks synb.Tmp.Expr -= @s synb.IEPlayer.CurrentAmmo
scoreboard players operation #stacks synb.Tmp.Expr *= num2 synb.Const
scoreboard players operation @s synb.Item.arrow_grinder.stacks += #stacks synb.Tmp.Expr
execute if score #stacks synb.Tmp.Expr matches 1.. run playsound minecraft:block.grindstone.use player @s ~ ~ ~ 1 0.5