# As/At : death_detector
##

# Final cycle gives nothing
execute if entity @e[type=!minecraft:player,tag=synb.mark.arena,tag=synb.attr.final,distance=..45,sort=nearest,limit=1] run return 0

execute store result storage synb.d:tmp args.random_motion_x float 0.0035 run random value -100..100 synb.r:misc_rng
execute store result storage synb.d:tmp args.random_motion_z float 0.0035 run random value -100..100 synb.r:misc_rng

execute store result storage synb.d:tmp args.money_worth int 1 run scoreboard players get @s synb.EnemySys.MoneyWorth
execute if score @s synb.EnemySys.MoneyWorth matches 1.. run function synb:enemies/_drop_money2 with storage synb.d:tmp args