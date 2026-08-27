data modify storage synb.d:tmp expr.box_choice set value ["_trash", "arrow_grinder", "balance", "bamboo", "box", "brick", "challenger", "charming_stone", "coal", "codex", "lucky_paw", "magic_gem", "refund", "reroll", "scute", "spelldust", "stats_deal"]
$data modify storage synb.d:tmp args.item_col_id set from storage synb.d:tmp expr.box_choice[$(rand_choice)]
data modify storage synb.d:tmp args.pool_name set value "shop"
function synb:elements/collectible/spawn with storage synb.d:tmp args