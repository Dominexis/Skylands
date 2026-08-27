# As/At : runner (enemy)
##

# Random dash
execute store result score #tmp_charge synb.Tmp.Expr run random value 0..145 synb.r:misc_rng
execute if entity @p[team=sl.player,tag=synb.attr.player_in_arena,distance=..15] if score #tmp_charge synb.Tmp.Expr matches ..1 unless score @s synb.Enemy.GenericCharge matches 1.. run scoreboard players add @s synb.Enemy.GenericCharge 1

# Stop dash when hitting player
effect clear @s[tag=synb.attr.just_attacked,scores={synb.Enemy.GenericCharge=61..}] minecraft:speed
scoreboard players reset @s[tag=synb.attr.just_attacked,scores={synb.Enemy.GenericCharge=61..}] synb.Enemy.GenericCharge

# Stop dash when frozen
scoreboard players reset @s[tag=synb.status.frozen] synb.Enemy.GenericCharge
execute if entity @s[tag=synb.status.frozen] run kill @e[type=minecraft:item_display,tag=synb.attr.runner_orbit,distance=..3,limit=1,sort=nearest]
effect clear @s[tag=synb.status.frozen] minecraft:speed

# Prepare
execute as @s[scores={synb.Enemy.GenericCharge=20}] run function synb:enemies/abilities/_prepare_charge

# Launch dash
execute as @s[scores={synb.Enemy.GenericCharge=60}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 2 1.5
effect give @s[scores={synb.Enemy.GenericCharge=60}] minecraft:speed 3 4 true
execute as @s[scores={synb.Enemy.GenericCharge=60}] run kill @e[type=minecraft:item_display,tag=synb.attr.runner_orbit,distance=..3,limit=1,sort=nearest]

execute as @s[scores={synb.Enemy.GenericCharge=60..}] run particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 1

scoreboard players reset @s[scores={synb.Enemy.GenericCharge=100..}] synb.Enemy.GenericCharge