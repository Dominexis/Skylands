playsound minecraft:entity.armadillo.land player @a ~ ~ ~ 1.5 0.7
particle minecraft:dust{color:[0.0,0.0,0.0],scale:1.5} ~ ~0.5 ~ 0.3 0.7 0.3 0.1 50
execute store result score #duration synb.Tmp.Expr run scoreboard players get @s synb.IEStat.Magic
scoreboard players operation #duration synb.Tmp.Expr /= num2 synb.Const
scoreboard players add #duration synb.Tmp.Expr 6
scoreboard players operation #duration synb.Tmp.Expr *= @s synb.IEItemCount.invisibility
execute store result storage synb.d:tmp args.inv_duration int 1 run scoreboard players get #duration synb.Tmp.Expr
function synb:all_items/invisibility/_invis with storage synb.d:tmp args