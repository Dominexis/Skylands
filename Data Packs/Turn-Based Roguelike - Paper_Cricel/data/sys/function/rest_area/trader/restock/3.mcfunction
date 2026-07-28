
$execute store result score #money pc.main run random value $(price_range)
$execute store result block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_data".pc.money_cost int 1 run scoreboard players get #money pc.main
$data modify entity @s data.item[{slot:$(slot)}].data set from block ~ ~ ~ Items[{Slot:$(slot)b}]
$item modify block ~ ~ ~ container.$(slot) sys:money

data remove storage pc:temp money.items[0]
execute if data storage pc:temp money.items[0] run function sys:rest_area/trader/restock/3 with storage pc:temp money.items[0]