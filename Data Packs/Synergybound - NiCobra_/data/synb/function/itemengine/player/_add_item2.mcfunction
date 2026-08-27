# /!\ Uncompiled
# As : player
# Args :
#   - exec_pid (macro)
#   - item_id (macro)
##

$data modify storage synb.d:itemengine players_inv[$(exec_pid)] insert 0 value "$(item_id)"

$scoreboard objectives add synb.IEItemCount.$(item_id) dummy
$scoreboard players add @s synb.IEItemCount.$(item_id) 1
scoreboard players add @s synb.IETotalItems 1

function synb:itemengine/mod/htick_stats
function synb:itemengine/mod/tick_attr

scoreboard players add %registered_items synb.Info 1
$data modify storage synb.d:itemengine registered_items append value "$(item_id)"

$function synb:all_items/$(item_id)/on_pickup

# Display
$function synb:itemengine/executor/get_icon {icon_item_id:$(item_id)}
data modify storage synb.d:tmp args.text_array set from block 3328 50 -2304 Items[0].components.minecraft:lore
function synb:utils/insert_breaks
data modify storage synb.d:tmp args.item_label set from block 3328 50 -2304 Items[0].components.minecraft:item_name
function synb:itemengine/player/_add_item_msg with storage synb.d:tmp args