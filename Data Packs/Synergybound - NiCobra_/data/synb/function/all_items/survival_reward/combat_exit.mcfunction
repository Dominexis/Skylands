execute store result score #missing synb.Tmp.Expr run attribute @s minecraft:max_health get
scoreboard players operation #missing synb.Tmp.Expr -= @s synb.Status.Health

scoreboard players operation #surplus synb.Tmp.Expr = @s synb.IEStat.Reward
scoreboard players operation #surplus synb.Tmp.Expr -= #missing synb.Tmp.Expr

execute store result storage synb.d:tmp args.amount int 1 run scoreboard players get #surplus synb.Tmp.Expr

execute if score #surplus synb.Tmp.Expr matches 1.. run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 2
execute if score #surplus synb.Tmp.Expr matches 1.. run function synb:utils/spawn_money with storage synb.d:tmp args