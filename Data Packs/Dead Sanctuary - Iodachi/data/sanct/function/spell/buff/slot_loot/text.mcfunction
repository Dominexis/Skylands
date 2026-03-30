# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.loaded_player.buff.slot_loot.title_book[0] run return 1
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "slot_loot"
data modify storage sanct:storage root.build_book.buff.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.price.color","interpret":true,"extra":[" bone"]}],description:["Unlock ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.slot_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.slot_next","color":"green"}," inventory. Whenever the\n§4DANGER§r timer fills, get ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.loot_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.loot_next","color":"green"}," random item."]}
data modify storage sanct:storage root.build_book.buff.list[-1].title set from storage sanct:storage root.loaded_player.buff.slot_loot.title_book[-1]

# Description changed by empty inventory
execute if score @s sanct.locked_inventory matches ..0 run data modify storage sanct:storage root.build_book.buff.list[-1].description set value ["Get 2 random items. Whenever the §4DANGER§r\ntimer fills, get ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.loot_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.description.loot_next","color":"green"}," random item.\n\n§9Modified by:\n ⋅ §4§lDIMENSION BREAK"]

# Fetch spell price
execute store result storage sanct:storage root.material_price.price byte 1 store result storage sanct:storage root.build_book.buff.slot_loot.price.value int 1 run data get storage sanct:storage root.loaded_player.buff.slot_loot.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_loot.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.price.value","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_loot.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_loot.price.value","color":"dark_red"}

# Set mouse-over description arguments
execute if data storage sanct:storage root.loaded_player.buff.slot_loot.count_last store result storage sanct:storage root.build_book.buff.slot_loot.description.loot_last int 1 store result storage sanct:storage root.build_book.buff.slot_loot.description.slot_last int 2 run data get storage sanct:storage root.loaded_player.buff.slot_loot.count_last
execute store result storage sanct:storage root.build_book.buff.slot_loot.description.loot_next int 1 store result storage sanct:storage root.build_book.buff.slot_loot.description.slot_next int 2 run data get storage sanct:storage root.loaded_player.buff.slot_loot.count_next
execute if data storage sanct:storage root.loaded_player.buff.slot_loot.count_last run data modify storage sanct:storage root.build_book.buff.slot_loot.description.arrow set value "§a -> "