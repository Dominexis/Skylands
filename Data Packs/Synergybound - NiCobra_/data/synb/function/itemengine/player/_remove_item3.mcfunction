# /!\ Uncompiled
# As : player
# Args :
#   - rm_item_id (macro)
##

$scoreboard players remove @s synb.IEItemCount.$(rm_item_id) 1
scoreboard players remove @s synb.IETotalItems 1
$function synb:all_items/$(rm_item_id)/on_remove

# Display
$function synb:itemengine/executor/get_icon {icon_item_id:$(rm_item_id)}
data modify storage synb.d:tmp args.text_array set from block 3328 50 -2304 Items[0].components.minecraft:lore
function synb:utils/insert_breaks
data modify storage synb.d:tmp args.item_label set from block 3328 50 -2304 Items[0].components.minecraft:item_name
function synb:itemengine/player/_rm_item_msg with storage synb.d:tmp args