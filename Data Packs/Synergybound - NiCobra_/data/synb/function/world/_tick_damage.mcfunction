# As/At : enemy/player
##

execute store result score #hp synb.Tmp.Expr run data get entity @s Health 10.0
scoreboard players operation @s synb.World.LastTickDmg = #hp synb.Tmp.Expr
scoreboard players operation @s synb.World.LastTickDmg -= @s synb.World.PreciseHealth
scoreboard players operation @s synb.World.PreciseHealth = #hp synb.Tmp.Expr

scoreboard players set #whole synb.Tmp.Expr 0
execute if score @s synb.World.LastTickDmg matches 1.. run scoreboard players operation #whole synb.Tmp.Expr += @s synb.World.LastTickDmg
execute if score @s synb.World.LastTickDmg matches ..-1 run scoreboard players operation #whole synb.Tmp.Expr -= @s synb.World.LastTickDmg
scoreboard players operation #decimal synb.Tmp.Expr = #whole synb.Tmp.Expr
scoreboard players operation #decimal synb.Tmp.Expr %= num10 synb.Const
execute store result storage synb.d:tmp args.whole int 0.1 run scoreboard players get #whole synb.Tmp.Expr
execute store result storage synb.d:tmp args.decimal float 1 run scoreboard players get #decimal synb.Tmp.Expr
execute store result storage synb.d:tmp args.rand_x float 0.1 run random value -7..7
execute store result storage synb.d:tmp args.rand_y float 0.1 run random value 6..15
execute store result storage synb.d:tmp args.rand_z float 0.1 run random value -7..7
execute if score #whole synb.Tmp.Expr matches 1.. facing entity @p[team=sl.player,tag=synb.type.player,distance=..40] eyes positioned ^ ^ ^0.5 run function synb:world/_spawn_indicator with storage synb.d:tmp args