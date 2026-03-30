# /!\ Uncompiled
# As : player
# At : [depends]
# Args :
#   - func (direct macro)
#   - Undefined contexts
##

execute if score @s synb.IEExecLayer matches 4 run return 1

$data modify storage synb.d:tmp args.exec_func set value $(func)
execute store result storage synb.d:tmp args.exec_pid int 1 run scoreboard players get @s synb.IEPlayer.Registered
scoreboard players add @s synb.IEExecLayer 1
execute store result storage synb.d:tmp args.exec_layer int 1 run scoreboard players get @s synb.IEExecLayer
tag @s add synb.ctx.generic_player_src
function synb:itemengine/executor/_run2 with storage synb.d:tmp args
scoreboard players remove @s synb.IEExecLayer 1
execute if score @s synb.IEExecLayer matches 0 run tag @s remove synb.ctx.generic_player_src
