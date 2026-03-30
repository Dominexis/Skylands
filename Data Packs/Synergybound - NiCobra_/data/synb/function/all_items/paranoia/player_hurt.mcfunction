execute unless score #player_hurt_dmg_type synb.Tmp.Ctx matches 2 run return 0

scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] synb.Status.Vulnerable 120
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] run playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 0.5 2
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] run function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:observer"}