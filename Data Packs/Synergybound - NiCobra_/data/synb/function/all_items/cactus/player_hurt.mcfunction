execute unless score #player_hurt_dmg_type synb.Tmp.Ctx matches 1 run return 0

execute store result score #dmg synb.Tmp.Expr run scoreboard players get @s synb.IEStat.MeleeDmg
scoreboard players operation #dmg synb.Tmp.Expr *= num200 synb.Const
execute store result storage synb.d:tmp args.dmg double 1 run scoreboard players get #dmg synb.Tmp.Expr

execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] run playsound minecraft:enchant.thorns.hit player @a ~ ~ ~
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] run function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:cactus"}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src] run function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args