# As/At : evader (enemy)
##

execute store result score #rand synb.Tmp.Expr run random value 1..10 synb.r:misc_rng
execute if score #rand synb.Tmp.Expr matches 1..4 run scoreboard players reset @s[scores={synb.Enemy.GenericCharge=1}] synb.Enemy.GenericCharge

execute if score @s synb.Enemy.GenericCharge matches 10 run function synb:enemies/abilities/_prepare_rand_tp
execute if score @s synb.Enemy.GenericCharge matches 40 run function synb:enemies/abilities/_rand_tp