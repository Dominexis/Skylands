# As : player
# Args :
#   - generic_player_src (tag ctx)
#   - enemy_hurt_target? (tag ctx)
#   - enemy_hurt_dmg_type (score ctx)
##

execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1.. \
    run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" default hurt "},{"selector":"@e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target,limit=1]"}]
execute if score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 if entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] \
    run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" melee attacked "},{"selector":"@e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target,limit=1]"}]
execute if score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] \
    run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" melee attacked an enemy (already dead)"}]
execute if score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 2 \
    run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" shot "},{"selector":"@e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target,limit=1]"}]