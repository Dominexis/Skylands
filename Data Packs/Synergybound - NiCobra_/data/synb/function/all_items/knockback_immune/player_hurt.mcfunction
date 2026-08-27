execute unless score @s synb.IEItemCount.knockback_immune matches 2.. run return 0
execute unless score #player_hurt_dmg_type synb.Tmp.Ctx matches 1 run return 0

effect give @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] minecraft:slowness 2 1 false
execute if score @s synb.IEItemCount.knockback_immune matches 3.. run effect give @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] minecraft:slowness 4 2 false
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] run playsound minecraft:block.netherite_block.place neutral @a ~ ~ ~ 1 0.5