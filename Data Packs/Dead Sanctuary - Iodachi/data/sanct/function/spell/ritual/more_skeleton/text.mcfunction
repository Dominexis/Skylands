# Return if spell maxed or barrier is unlocked
execute unless data storage sanct:storage root.ritual.more_skeleton.title_book[0] run return 1
execute if score #barrier_unlocked sanct.numbers matches 1.. run return 1

data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "more_skeleton"
data modify storage sanct:storage root.build_book.ritual.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.ritual.more_skeleton.price.color","interpret":true,"extra":[" bone"]}],description:[{"text":"§9RAISE SKELETONS§r summons "},{score:{name:"#summon_skeleton_count",objective:"sanct.numbers"}}," §a-> ",{"storage":"sanct:storage","nbt":"root.ritual.more_skeleton.count_scale[-1]","color":"green"}," §7Skeleton§r\n§7Riders§r and they have ",{"storage":"sanct:storage","nbt":"root.ritual.more_skeleton.health_decrease_last"},{"storage":"sanct:storage","nbt":"root.ritual.more_skeleton.description_arrow"},{"storage":"sanct:storage","nbt":"root.ritual.more_skeleton.health_decrease_next","color":"green"},"§a%§r less\nhealth."]}
data modify storage sanct:storage root.build_book.ritual.list[-1].title set from storage sanct:storage root.ritual.more_skeleton.title_book[-1]

# Fetch spell price
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.ritual.more_skeleton.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_skeleton.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_skeleton.price[-1]","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_skeleton.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_skeleton.price[-1]","color":"dark_red"}