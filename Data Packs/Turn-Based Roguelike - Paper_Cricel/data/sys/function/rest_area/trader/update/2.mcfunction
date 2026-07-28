
execute summon chest_minecart run function sys:item/return/fromchest

data modify storage pc:temp money.items append from entity @s data.item[{is_sell:1b}]
function sys:rest_area/trader/update/2b with storage pc:temp money.items[0]
data remove storage pc:temp money

function sys:item/tip/use