# As : player
# Args :
#   - inv_idx (storage)
##

execute store result storage synb.d:tmp args.exec_pid int 1 run scoreboard players get @s synb.IEPlayer.Registered
function synb:itemengine/player/_remove_item2 with storage synb.d:tmp args