# As : enemy
##

execute on passengers run tag @s add synb.ctx.enemy_killed_detector
execute on attacker run function synb:itemengine/executor/run {func:"enemy_sniped"}
execute on passengers run tag @s remove synb.ctx.enemy_killed_detector
execute on passengers run tag @s add synb.attr.terminate