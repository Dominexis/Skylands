# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.loaded_player.buff.slot_attack_speed.title_book[0] run return 1
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "slot_attack_speed"
data modify storage sanct:storage root.build_book.buff.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.price.color","interpret":true,"extra":[" rotten flesh"]}],description:["Unlock ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.slot_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.slot_next","color":"green"}," inventory and\ngain ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.attack_speed_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.decimal[1]"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.attack_speed_next","color":"green"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.decimal[0]"}," attack speed."]}
data modify storage sanct:storage root.build_book.buff.list[-1].title set from storage sanct:storage root.loaded_player.buff.slot_attack_speed.title_book[-1]

# Description changed by empty inventory
execute if entity @s[advancements={sanct:tags={empty_inventory=true}}] run data modify storage sanct:storage root.build_book.buff.list[-1].description set value ["Gain ",{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.attack_speed_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.decimal[1]"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.attack_speed_next","color":"green"},{"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.description.decimal[0]"}," attack speed\nand get 1 random item.\n\n§9Modified by:\n ⋅ §4§lDIMENSION BREAK"]

# Fetch spell price
execute store result storage sanct:storage root.material_price.price byte 1 store result storage sanct:storage root.build_book.buff.slot_attack_speed.price.value int 1 run data get storage sanct:storage root.loaded_player.buff.slot_attack_speed.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.price.value","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.slot_attack_speed.price.value","color":"dark_red"}

# Set mouse-over description argument
execute if data storage sanct:storage root.loaded_player.buff.slot_attack_speed.count_last store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.slot_last int 1 store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.attack_speed_last int 0.5 run data get storage sanct:storage root.loaded_player.buff.slot_attack_speed.count_last
execute store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.slot_next int 1 store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.attack_speed_next int 0.5 run data get storage sanct:storage root.loaded_player.buff.slot_attack_speed.count_next
execute if data storage sanct:storage root.loaded_player.buff.slot_attack_speed.count_last run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.description.arrow set value "§a -> "

# Add decimal to attack speed
execute if predicate sanct:spell/slot_attack_speed_next_decimal run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.description.decimal set value ["§a.5",".0"]
execute unless predicate sanct:spell/slot_attack_speed_next_decimal run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.description.decimal set value ["§a.0",".5"]
execute unless data storage sanct:storage root.loaded_player.buff.slot_attack_speed.count_last run data remove storage sanct:storage root.build_book.buff.slot_attack_speed.description.decimal[1]

# Set previous buff mouse-over description argument
#execute if data storage sanct:storage root.loaded_player.buff.slot_attack_speed.stat store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.slot_last int 1 store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.attack_speed_last int 25 run data get storage sanct:storage root.loaded_player.buff.slot_attack_speed.stat.attack_speed 4
#execute if data storage sanct:storage root.loaded_player.buff.slot_attack_speed.stat run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.description.decimal_last set value "0."
#execute if data storage sanct:storage root.loaded_player.buff.slot_attack_speed.stat run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.description.arrow set value "§a -> "

# Set next buff mouse-over description arguement
#execute store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.slot_next int 1 store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.attack_speed_next int 25 run data get storage sanct:storage root.loaded_player.buff.slot_attack_speed.count_next
#execute unless data storage sanct:storage {root:{build_book:{buff:{slot_attack_speed:{description:{attack_speed_next:100}}}}}} run data modify storage sanct:storage root.build_book.buff.slot_attack_speed.description.decimal_next set value "§a0."
#execute if data storage sanct:storage {root:{build_book:{buff:{slot_attack_speed:{description:{attack_speed_next:100}}}}}} store result storage sanct:storage root.build_book.buff.slot_attack_speed.description.attack_speed_next int .01 run data get storage sanct:storage root.build_book.buff.slot_attack_speed.description.attack_speed_next