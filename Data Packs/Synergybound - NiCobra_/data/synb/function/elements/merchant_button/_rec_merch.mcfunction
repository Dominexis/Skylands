$execute unless data entity @s Offers.Recipes[$(ind)] run return 0

$data modify storage synb.d:tmp args.item_label set from entity @s Offers.Recipes[$(ind)].sell.components.minecraft:item_name
$data modify storage synb.d:tmp args.text_array set from entity @s Offers.Recipes[$(ind)].sell.components.minecraft:lore
$data modify storage synb.d:tmp args.cost set from entity @s Offers.Recipes[$(ind)].buy.count
function synb:utils/insert_breaks
function synb:elements/merchant_button/_disp_item with storage synb.d:tmp args

scoreboard players add #ind synb.Tmp.Expr 1
execute store result storage synb.d:tmp args.ind int 1 run scoreboard players get #ind synb.Tmp.Expr
function synb:elements/merchant_button/_rec_merch with storage synb.d:tmp args