# exe : trader + positioned ~ ~1 ~

# effect
execute summon minecraft:chest_minecart run function pc:sys/item/return/inproperly_item
function pc:sys/game/rest_area/purchase/affordable_value

# Get Items
$data modify storage pc:temp loot.type set from storage pc:game loot.$(loot_table)
data modify storage pc:temp slot_tolist set from entity @s data.item
function pc:sys/game/rest_area/trader/restock/slot_tolist
function pc:sys/utils/loot_table/use

execute store result score #max pc.main run data get entity @s data.item
scoreboard players remove #max pc.main 1
scoreboard players set #index pc.main -1
function pc:sys/game/rest_area/trader/restock/2

data remove storage pc:temp restock