
data modify entity @s data.item[].is_sell set value 1b
execute summon minecart run function sys:item/return/fromchest

function sys:rest_area/trader/restock/2b with entity @s data
data modify storage pc:utils loot.slots append from entity @s data.item.[].slot
function sys:utils/loot/use

data modify storage pc:temp money.items set from entity @s data.item
function sys:rest_area/trader/restock/3 with storage pc:temp money.items[0]
data remove storage pc:temp money

function sys:item/tip/use