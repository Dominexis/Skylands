scoreboard players operation #tmp synb.Tmp.Expr = @s synb.Item.pyro.fire_health
scoreboard players operation #tmp synb.Tmp.Expr *= num8 synb.Const
scoreboard players add #tmp synb.Tmp.Expr 30
execute store result storage synb.d:tmp args.height double 0.01 run scoreboard players get #tmp synb.Tmp.Expr
function synb:all_items/pyro/_transform with storage synb.d:tmp args