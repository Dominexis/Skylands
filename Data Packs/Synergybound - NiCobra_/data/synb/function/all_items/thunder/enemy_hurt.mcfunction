execute if score @s synb.IEExecCount.thunder matches 2.. run return 0
execute if score @s synb.IEExecLayer matches 3.. run return 0

execute unless score @s synb.Item.thunder.strike_count matches 1.. run return 0
scoreboard players remove @s synb.Item.thunder.strike_count 1

# Strike

scoreboard players operation #dmg synb.Tmp.Expr = @s synb.IEStat.Magic
scoreboard players operation #dmg synb.Tmp.Expr *= num2 synb.Const
scoreboard players add #dmg synb.Tmp.Expr 14
scoreboard players operation #dmg synb.Tmp.Expr *= num1000 synb.Const
execute store result storage synb.d:tmp args.dmg double 1 run scoreboard players get #dmg synb.Tmp.Expr

particle minecraft:flash{color:[1.0,1.0,1.0,1.0]} ~ ~ ~ 0 0 0 1 1
summon minecraft:lightning_bolt ~ ~ ~ {}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] run function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args