# As : enemy
# Args :
#   - generic_player_src (tag ctx)
##

tag @s add synb.attr.death_already_triggered

scoreboard players reset #already_target synb.Tmp.Expr
execute if entity @s[tag=synb.ctx.enemy_hurt_target] run scoreboard players set #already_target synb.Tmp.Expr 1
tag @s add synb.ctx.enemy_hurt_target

execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] run function synb:itemengine/executor/run {func:"enemy_hurt"}

damage @s 99999 minecraft:generic by @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1]

execute on passengers run tag @s add synb.ctx.enemy_killed_detector
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] run function synb:itemengine/executor/run {func:"enemy_killed"}
execute on passengers run tag @s remove synb.ctx.enemy_killed_detector
execute on passengers run tag @s add synb.attr.terminate

execute unless score #already_target synb.Tmp.Expr matches 1 run tag @s remove synb.ctx.enemy_hurt_target