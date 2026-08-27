# /!\ Uncompiled
# Args :
#   - env (macro)
#   - pool_name (macro)
#   - pool_targets (tag arg)
#   - picked_item (storage arg)
##

$execute unless data storage synb.d:pools item_pools.env_$(env).$(pool_name)[0] run function synb:pools/create_pools {env:$(env)}

data modify storage synb.d:tmp args.picked_item set value "_error"
$data modify storage synb.d:tmp args.picked_item set from storage synb.d:pools item_pools.env_$(env).$(pool_name)[0]
$data remove storage synb.d:pools item_pools.env_$(env).$(pool_name)[0]