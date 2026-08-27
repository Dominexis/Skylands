execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 2 run return 0
execute if score @s synb.IEExecCount.spark_wounds matches 2.. run return 0
execute if score @s synb.IEExecLayer matches 3.. run return 0
execute if score @s synb.IEPlayer.CurrentAmmo matches 1.. run return 0

execute store result score #dmg synb.Tmp.Expr run scoreboard players get @s synb.IEStat.RangedDmg
scoreboard players operation #dmg synb.Tmp.Expr *= num200 synb.Const
scoreboard players operation #dmg synb.Tmp.Expr *= @s synb.IEItemCount.golden_arrow
execute store result storage synb.d:tmp args.dmg double 1 run scoreboard players get #dmg synb.Tmp.Expr

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target,limit=1] at @s run function synb:all_items/golden_arrow/_impact