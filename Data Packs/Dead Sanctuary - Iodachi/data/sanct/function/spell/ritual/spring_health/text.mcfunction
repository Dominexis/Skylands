# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.ritual.spring_health.title_book[0] run return 1
data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "spring_health"
data modify storage sanct:storage root.build_book.ritual.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.ritual.spring_health.price.color","interpret":true,"extra":[" rotten flesh"]}],description:["Springs ",{storage:"sanct:storage",nbt:"root.ritual.spring_health.description[-1]"}," spawn\naround the island that restore 6 health."]}
data modify storage sanct:storage root.build_book.ritual.list[-1].title set from storage sanct:storage root.ritual.spring_health.title_book[-1]

# Fetch spell price
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.ritual.spring_health.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.spring_health.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.spring_health.price[-1]","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.spring_health.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.spring_health.price[-1]","color":"dark_red"}