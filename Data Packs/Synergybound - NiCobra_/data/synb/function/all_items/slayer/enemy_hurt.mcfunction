execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1..2 run return 0
execute if score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 unless entity @s[tag=synb.status.charged_melee] run return 0
execute if score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 if score @s synb.IEExecLayer matches 2.. run return 0
execute if score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 2 if score @s synb.IEExecLayer matches 3.. run return 0

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] at @s run function synb:all_items/slayer/_damage