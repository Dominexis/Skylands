# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.loaded_player.buff.revenge.title_book[0] run return 1
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "revenge"
data modify storage sanct:storage root.build_book.buff.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.price.color","interpret":true,"extra":[" bone"]}],description:["Gain ",{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.health_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.health_next","color":"green"}," health and ",{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.armor_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.armor_next","color":"green"}," armor.\nAfter getting hurt, deal 2 more\ndamage for ",{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.seconds_last"},{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.description.seconds_next","color":"green"}," second."]}
data modify storage sanct:storage root.build_book.buff.list[-1].title set from storage sanct:storage root.loaded_player.buff.revenge.title_book[-1]

# Fetch spell price
execute store result storage sanct:storage root.material_price.price byte 1 store result storage sanct:storage root.build_book.buff.revenge.price.value int 1 run data get storage sanct:storage root.loaded_player.buff.revenge.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.revenge.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.price.value","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.revenge.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.revenge.price.value","color":"dark_red"}

# Set mouse-over description arguments
execute store result storage sanct:storage root.build_book.buff.revenge.description.seconds_next int 1 store result storage sanct:storage root.build_book.buff.revenge.description.armor_next int 2 store result storage sanct:storage root.build_book.buff.revenge.description.health_next int 4 run data get storage sanct:storage root.loaded_player.buff.revenge.count_next

# Set mouse-over description arguments for upgrade
execute unless data storage sanct:storage root.loaded_player.buff.revenge.count_last run return 1
data modify storage sanct:storage root.build_book.buff.revenge.description.arrow set value "§a -> "
execute store result storage sanct:storage root.build_book.buff.revenge.description.seconds_last int 1 store result storage sanct:storage root.build_book.buff.revenge.description.armor_last int 2 store result storage sanct:storage root.build_book.buff.revenge.description.health_last int 4 run data get storage sanct:storage root.loaded_player.buff.revenge.count_last