# As : player
##

scoreboard players operation @s synb.IEPlayer.CurrentAmmo = @s synb.IEStat.Ammo

execute at @s run function synb:itemengine/executor/run {func:"combat_exit"}

execute if score @s synb.IEStat.Reward matches ..-1 store result storage synb.d:tmp args.dmg int -1 run scoreboard players get @s synb.IEStat.Reward
execute if score @s synb.IEStat.Reward matches ..-1 run function synb:itemengine/player/damage_player with storage synb.d:tmp args
execute if score @s synb.IEStat.Reward matches 1.. run scoreboard players operation @s synb.IEPlayer.RegenTime += @s synb.IEStat.Reward