# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.loaded_player.buff.slot_health.title_book[0] run return 1
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "slot_health"
data modify storage sanct:storage root.build_book.buff.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.price.color","interpret":true,"extra":[" rotten flesh"]}],description:["Unlock ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.slot_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.slot_next","color":"green"}," inventory and\ngain ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.health_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.health_next","color":"green"}," health."]}
data modify storage sanct:storage root.build_book.buff.list[-1].title set from storage sanct:storage root.loaded_player.buff.slot_health.title_book[-1]

# Description changed by empty inventory
execute if score @s sanct.locked_inventory matches ..0 run data modify storage sanct:storage root.build_book.buff.list[-1].description set value ["Gain ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.health_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.description.health_next","color":"green"}," health and get 1 random item.\n\n§9Modified by:\n ⋅ §4§lDIMENSION BREAK"]

# Fetch spell price
execute store result storage sanct:storage root.material_price.price byte 1 store result storage sanct:storage root.build_book.buff.slot_health.price.value int 1 run data get storage sanct:storage root.loaded_player.buff.slot_health.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_health.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.price.value","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_health.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_health.price.value","color":"dark_red"}

# Set slot mouse-over description argument
execute if data storage sanct:storage root.loaded_player.buff.slot_health.stat store result storage sanct:storage root.build_book.buff.slot_health.description.slot_last int 0.5 store result storage sanct:storage root.build_book.buff.slot_health.description.health_last int 1 run data get storage sanct:storage root.loaded_player.buff.slot_health.stat.max_health
execute if data storage sanct:storage root.loaded_player.buff.slot_health.stat run data modify storage sanct:storage root.build_book.buff.slot_health.description.arrow set value "§a -> "
execute store result storage sanct:storage root.build_book.buff.slot_health.description.slot_next int 1 store result storage sanct:storage root.build_book.buff.slot_health.description.health_next int 2 run data get storage sanct:storage root.loaded_player.buff.slot_health.count_next