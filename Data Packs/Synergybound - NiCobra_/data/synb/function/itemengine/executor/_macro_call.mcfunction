# /!\ Uncompiled
# As : player
# At : [depends]
# Args :
#   - exec_func (macro)
#   - exec_item_id (macro)
#   - Undefined contexts
##

$execute if score check_on_remove_$(exec_func) synb.Const matches 1 run scoreboard players reset @s synb.IEItemCount.$(exec_item_id)

$scoreboard objectives add synb.IEExecCount.$(exec_item_id) dummy
$scoreboard objectives add synb.IEExecCount_l$(exec_layer).$(exec_item_id) dummy
$scoreboard players add @s synb.IEExecCount_l$(exec_layer).$(exec_item_id) 1

$scoreboard players operation @s synb.IEExecCount.$(exec_item_id) = @s synb.IEExecCount_l$(exec_layer).$(exec_item_id)
$function synb:all_items/$(exec_item_id)/$(exec_func)

# Reset var (could be modified by sub-layers)
$data modify storage synb.d:tmp args.exec_layer set value $(exec_layer)
$data modify storage synb.d:tmp args.exec_func set value $(exec_func)

$execute if score @s synb.IEExecCount_l$(exec_layer).$(exec_item_id) >= @s synb.IEItemCount.$(exec_item_id) run scoreboard players reset @s synb.IEExecCount_l$(exec_layer).$(exec_item_id)