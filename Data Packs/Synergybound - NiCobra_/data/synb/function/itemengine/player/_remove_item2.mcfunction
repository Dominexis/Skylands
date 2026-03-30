# /!\ Uncompiled
# As : player
# Args :
#   - exec_pid (macro)
#   - inv_idx (macro)
##

$data modify storage synb.d:tmp args.rm_item_id set from storage synb.d:itemengine players_inv[$(exec_pid)][$(inv_idx)]
$data remove storage synb.d:itemengine players_inv[$(exec_pid)][$(inv_idx)]
function synb:itemengine/player/_remove_item3 with storage synb.d:tmp args

function synb:itemengine/mod/htick_stats
function synb:itemengine/mod/tick_attr