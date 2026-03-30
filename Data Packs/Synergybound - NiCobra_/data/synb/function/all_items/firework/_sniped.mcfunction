execute on passengers run tag @s add synb.ctx.enemy_killed_detector
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src] run function synb:itemengine/executor/run {func:"enemy_sniped"}
execute on passengers run tag @s remove synb.ctx.enemy_killed_detector
execute on passengers run tag @s add synb.attr.terminate