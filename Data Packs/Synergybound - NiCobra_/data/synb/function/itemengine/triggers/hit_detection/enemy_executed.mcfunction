# As : enemy
##

# Triggers also when not an execution, but "on attacker" will fail (intentionally)
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 1
execute at @s on attacker run function synb:itemengine/executor/run {func:"enemy_hurt"}
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 0
execute on passengers run tag @s add synb.ctx.enemy_killed_detector

# Special looting logic
execute on attacker run tag @s add synb.tmp.kill_src
execute on passengers run scoreboard players operation @s synb.EnemySys.MoneyWorth += @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.kill_src,limit=1] synb.IEEnch.Looting
execute on attacker run tag @s remove synb.tmp.kill_src

execute at @s on attacker run function synb:itemengine/executor/run {func:"enemy_executed"}
execute at @s on attacker run function synb:itemengine/executor/run {func:"enemy_killed"}
execute on passengers run tag @s remove synb.ctx.enemy_killed_detector
execute on passengers run tag @s add synb.attr.terminate