# As : enemy
# Args :
#   - enemy_hurt_target (tag ctx)
##

effect clear @s minecraft:unluck

# Apply damage
execute on attacker store result storage synb.d:tmp args.dmg long 100 run scoreboard players get @s synb.IEStat.RangedDmg
execute on attacker run scoreboard players add @s synb.IEExecLayer 1
execute on attacker run tag @s add synb.ctx.generic_player_src
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 2
function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 0

# Maybe kill
execute if entity @s[tag=synb.attr.death_already_triggered] run function synb:itemengine/triggers/hit_detection/_enemy_sniped
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src] remove synb.ctx.generic_player_src
execute on attacker run scoreboard players remove @s synb.IEExecLayer 1