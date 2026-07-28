## (exe) item_display

data modify storage pc:temp item set from entity @s item.components."minecraft:custom_data".pc

function sys:item/update/name
function sys:item/update/lore/use
execute if data storage pc:temp item.disable_turn run function sys:item/update/disable

data remove storage pc:temp item