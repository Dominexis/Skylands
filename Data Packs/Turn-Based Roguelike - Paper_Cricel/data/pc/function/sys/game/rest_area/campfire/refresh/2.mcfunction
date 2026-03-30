
# reset
function pc:sys/game/rest_area/purchase/affordable_value
execute summon minecraft:chest_minecart run function pc:sys/item/return/inproperly_item

# merchandise
execute if data storage pc:game {shop:{campfire:{is_sell:{cure:1b}}}} run function pc:sys/game/rest_area/campfire/refresh/cure
execute if data storage pc:game {shop:{campfire:{is_sell:{hpmax:1b}}}} run function pc:sys/game/rest_area/campfire/refresh/hpmax
execute if data storage pc:game {shop:{campfire:{is_sell:{epmax:1b}}}} run function pc:sys/game/rest_area/campfire/refresh/epmax