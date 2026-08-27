##

data modify storage synb.d:tmp args.item_id set from storage synb.d:itemengine registered_items[0]
function synb:itemengine/macro_item_unregister with storage synb.d:tmp args
data remove storage synb.d:itemengine registered_items[0]
scoreboard players remove %registered_items synb.Info 1
execute if score %registered_items synb.Info matches 1.. run function synb:itemengine/rec_unregister_items