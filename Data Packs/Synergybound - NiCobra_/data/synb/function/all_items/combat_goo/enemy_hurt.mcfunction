execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 run return 0
execute if score @s synb.Status.Sneak matches 1 run return 0
playsound minecraft:block.slime_block.break player @a ~ ~ ~ 1 1

execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] run particle minecraft:item_slime ~ ~1 ~ 0.2 0.5 0.2 1 10