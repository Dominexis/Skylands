execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 run return 0
execute if score @s synb.IEExecLayer matches 2.. run return 0
execute unless entity @s[tag=synb.status.charged_melee] run return 0

execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= @s synb.IEStat.Luck
execute if score #rand synb.Tmp.Expr matches 26.. run return 0

tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] add synb.ctx.enemy_blocked_src
scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_blocked_src] synb.Status.Frozen 30
execute at @s run function synb:itemengine/executor/run {func:"used_shield"}
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] remove synb.ctx.enemy_blocked_src

execute at @s run playsound minecraft:item.shield.break player @a ~ ~ ~ 0.7 0.5