# /!\ Uncompiled
# As : player
# Args :
#   - exec_i (macro)
#   - exec_i (score arg)
#   - exec_pid (macro)
#   - overflow (score arg)
# Returns : 0/1
##

# Empty slot
$execute unless data storage synb.d:itemengine players_inv[$(exec_pid)][$(exec_i)] if score #exec_i synb.Tmp.Arg matches ..26 run function synb:itemengine/mod/inv/item_list/_default_insert with storage synb.d:tmp args
$execute unless data storage synb.d:itemengine players_inv[$(exec_pid)][$(exec_i)] run return 1

# Overflow
execute if score #exec_i synb.Tmp.Arg matches 27.. run scoreboard players add #overflow synb.Tmp.Arg 1
execute if score #exec_i synb.Tmp.Arg matches 27.. run return 0

# Icon
$data modify storage synb.d:tmp args.icon_item_id set from storage synb.d:itemengine players_inv[$(exec_pid)][$(exec_i)]
function synb:itemengine/executor/get_icon with storage synb.d:tmp args
$function synb:itemengine/mod/inv/item_list/_safe_insert {exec_i:"$(exec_i)"}