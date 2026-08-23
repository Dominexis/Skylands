
data modify entity @s data.item[].is_sell set value 1b
execute summon minecart run function pc:sys/item/return/fromchest

function pc:sys/rest_area/trader/restock/2b with entity @s data
data modify storage pc:utils loot.slots append from entity @s data.item.[].slot
function pc:sys/utils/loot/use

data modify storage pc:temp money.items set from entity @s data.item
function pc:sys/rest_area/trader/restock/3 with storage pc:temp money.items[0]
data remove storage pc:temp money

function pc:sys/item/tip/use