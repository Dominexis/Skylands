# As : player
# Args :
#   - generic_player_src (tag ctx)
#   - enemy_attacker_src? (tag ctx)
#   - player_hurt_dmg_type (score ctx)
##

execute unless score #player_hurt_dmg_type synb.Tmp.Ctx matches 1.. \
    run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" default hurt."}]
execute if score #player_hurt_dmg_type synb.Tmp.Ctx matches 1 \
    run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" melee attacked by "},{"selector":"@e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src,limit=1]"}]
execute if score #player_hurt_dmg_type synb.Tmp.Ctx matches 2 \
    run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[DEBUG Item] ","color":"gray"},{"selector":"@s"},{"text":" shot by "},{"selector":"@e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_attacker_src,limit=1]"}]