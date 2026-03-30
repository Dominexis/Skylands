# /!\ Uncompiled
# As/At : [depends]
# Args :
#   - env (macro)
#   - pool_name (macro)
##

$function synb:pools/get_item {env:$(env),pool_name:"$(pool_name)"}

data modify storage synb.d:tmp args.item_col_id set from storage synb.d:tmp args.picked_item
$data modify storage synb.d:tmp args.pool_name set value $(pool_name)
function synb:elements/collectible/spawn with storage synb.d:tmp args

particle minecraft:poof ~ ~1.2 ~ 0.2 0.2 0.2 0.03 30