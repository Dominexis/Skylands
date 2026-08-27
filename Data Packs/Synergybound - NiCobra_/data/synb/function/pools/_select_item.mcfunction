# /!\ Uncompiled
# Args :
#   - env (macro)
#   - base_name (macro)
#   - pool_name (macro)
#   - rand_idx_src (macro)
#   - rand_idx_dest (macro)
#   - pool_targets (tag arg)
##

data modify storage synb.d:tmp ctx.selected_item set value "_error"
$data modify storage synb.d:tmp ctx.selected_item set from storage synb.d:pools base.$(base_name)[$(rand_idx_src)]
$data remove storage synb.d:pools base.$(base_name)[$(rand_idx_src)]

$execute if data storage synb.d:tmp ctx.selected_item run data modify storage synb.d:pools item_pools.env_$(env).$(pool_name) insert $(rand_idx_dest) from storage synb.d:tmp ctx.selected_item