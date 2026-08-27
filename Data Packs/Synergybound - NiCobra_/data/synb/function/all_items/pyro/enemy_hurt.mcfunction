execute if score @s synb.IEExecCount.pyro matches 2.. run return 0
execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 run return 0
execute unless entity @s[tag=synb.status.charged_melee] run return 0
execute if score @s synb.IEExecLayer matches 2.. run return 0

execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng

execute if score @s synb.IEItemCount.pyro matches 2.. run scoreboard players operation #rand synb.Tmp.Expr /= num2 synb.Const
execute if score @s synb.IEItemCount.pyro matches 3.. run scoreboard players set #rand synb.Tmp.Expr 0

scoreboard players operation #rand synb.Tmp.Expr /= @s synb.IEStat.Luck

execute if score #rand synb.Tmp.Expr matches ..35 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] positioned ~ ~1 ~ run function synb:all_items/pyro/_spawn_fire