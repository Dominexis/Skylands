execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 2 run return 0
execute if score @s synb.IEExecLayer matches 3.. run return 0

execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= @s synb.IEStat.Luck
execute if score #rand synb.Tmp.Expr matches 31.. run return 0

execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] run function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:flint"}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] at @s run function synb:itemengine/player/damage_enemy_magic {dmg:4}