
# player
execute as @a[predicate=sys:player/ingame] at @s run function sys:combat/tpter/return/has_level/player with storage pc:game coord

# rest area
function sys:rest_area/start_button/summon with storage pc:game coord

# restock
function sys:rest_area/campfire/restock
function sys:rest_area/trader/restock