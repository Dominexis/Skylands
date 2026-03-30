# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.loaded_player.buff.slot_reach.title_book[0] run return 1
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "slot_reach"
data modify storage sanct:storage root.build_book.buff.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.price.color","interpret":true,"extra":[" bone"]}],description:["Unlock ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.slot_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.slot_next","color":"green"}," inventory and gain\n",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.reach_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.reach_next","color":"green"},"§a%§r attack reach."]}
data modify storage sanct:storage root.build_book.buff.list[-1].title set from storage sanct:storage root.loaded_player.buff.slot_reach.title_book[-1]

# Description changed by empty inventory
execute if score @s sanct.locked_inventory matches ..0 run data modify storage sanct:storage root.build_book.buff.list[-1].description set value ["Gain ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.reach_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.description.reach_next","color":"green"},"§a%§r attack reach and\nget 3 random items.\n\n§9Modified by:\n ⋅ §4§lDIMENSION BREAK"]

# Fetch spell price
execute store result storage sanct:storage root.material_price.price byte 1 store result storage sanct:storage root.build_book.buff.slot_reach.price.value int 1 run data get storage sanct:storage root.loaded_player.buff.slot_reach.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_reach.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.price.value","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_reach.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_reach.price.value","color":"dark_red"}

# Set mouse-over description arguments
execute store result storage sanct:storage root.build_book.buff.slot_reach.description.reach_next int 25 store result storage sanct:storage root.build_book.buff.slot_reach.description.slot_next int 3 run data get storage sanct:storage root.loaded_player.buff.slot_reach.count_next
execute if data storage sanct:storage root.loaded_player.buff.slot_reach.stat store result storage sanct:storage root.build_book.buff.slot_reach.description.reach_last int 25 store result storage sanct:storage root.build_book.buff.slot_reach.description.slot_last int 3 run data get storage sanct:storage root.loaded_player.buff.slot_reach.stat.reach 4
execute if data storage sanct:storage root.loaded_player.buff.slot_reach.stat run data modify storage sanct:storage root.build_book.buff.slot_reach.description.arrow set value "§a -> "