# /!\ Uncompiled
# As : enemy
# Args :
#   - dmg (macro)
#   - generic_player_src (tag ctx)
##

$scoreboard players operation #dmg synb.Tmp.Expr = num$(dmg) synb.Const
scoreboard players operation #dmg synb.Tmp.Expr += @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEStat.Magic
execute if score #dmg synb.Tmp.Expr matches 0 run return 0
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src] store result storage synb.d:tmp args.dmg double 1.0 run scoreboard players get #dmg synb.Tmp.Expr

execute at @s run playsound minecraft:block.amethyst_block.resonate hostile @a ~ ~ ~ 0.6 0.7
execute at @s run particle minecraft:witch ~ ~0.5 ~ 0.2 1 0.2 5 7

function synb:itemengine/player/damage_enemy with storage synb.d:tmp args