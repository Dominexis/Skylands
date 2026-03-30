# /!\ Uncompiled
# As : player
# At : [depends]
# Args :
#   - exec_func (storage)
#   - exec_pid (macro)
#   - exec_i (macro)
#   - Undefined contexts
##

$execute unless data storage synb.d:itemengine players_inv[$(exec_pid)][$(exec_i)] run return 1
$data modify storage synb.d:tmp args.exec_item_id set from storage synb.d:itemengine players_inv[$(exec_pid)][$(exec_i)]
function synb:itemengine/executor/_macro_call with storage synb.d:tmp args
return 0