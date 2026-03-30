# Args :
#   - item_id (macro)
##

$function synb:all_items/$(item_id)/unregister
$scoreboard objectives remove synb.IEItemCount.$(item_id)
$scoreboard objectives remove synb.IEExecCount.$(item_id)

$scoreboard objectives remove synb.IEExecCount_l1.$(item_id)
$scoreboard objectives remove synb.IEExecCount_l2.$(item_id)
$scoreboard objectives remove synb.IEExecCount_l3.$(item_id)
$scoreboard objectives remove synb.IEExecCount_l4.$(item_id)