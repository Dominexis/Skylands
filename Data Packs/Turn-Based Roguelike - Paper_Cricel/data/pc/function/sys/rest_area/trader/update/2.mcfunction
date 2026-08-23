
execute summon chest_minecart run function pc:sys/item/return/fromchest

data modify storage pc:temp money.items append from entity @s data.item[{is_sell:1b}]
function pc:sys/rest_area/trader/update/2b with storage pc:temp money.items[0]
data remove storage pc:temp money

function pc:sys/item/tip/use