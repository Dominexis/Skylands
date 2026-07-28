
function sys:rest_area/is_affordable
execute summon minecraft:chest_minecart run function sys:item/return/fromchest

execute if data storage pc:game {shop:{campfire:{hpmax:{is_sell:1b}}}} run function sys:rest_area/campfire/update/hpmax
execute if data storage pc:game {shop:{campfire:{epmax:{is_sell:1b}}}} run function sys:rest_area/campfire/update/epmax
execute if data storage pc:game {shop:{campfire:{skill_slot:{is_sell:1b}}}} run function sys:rest_area/campfire/update/skill_slot