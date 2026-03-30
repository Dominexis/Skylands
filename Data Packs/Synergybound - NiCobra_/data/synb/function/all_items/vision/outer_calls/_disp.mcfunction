$function synb:itemengine/executor/get_icon {icon_item_id:$(pool_item_id)}
data modify storage synb.d:tmp args.text_array set from block 3328 50 -2304 Items[0].components.minecraft:lore
function synb:utils/insert_breaks
data modify storage synb.d:tmp args.item_label set from block 3328 50 -2304 Items[0].components.minecraft:item_name
function synb:all_items/vision/outer_calls/_msg with storage synb.d:tmp args