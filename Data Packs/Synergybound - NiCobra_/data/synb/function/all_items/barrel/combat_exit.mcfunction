scoreboard players set #amount synb.Tmp.Expr 1
scoreboard players operation #amount synb.Tmp.Expr += @s synb.IEStat.Magic
execute if score #amount synb.Tmp.Expr matches 1.. run playsound minecraft:block.barrel.open player @s ~ ~ ~ 0.4 0.7
execute store result storage synb.d:tmp args.amount int 1 run scoreboard players get #amount synb.Tmp.Expr
function synb:utils/spawn_money with storage synb.d:tmp args