# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.ritual.more_bone.title_book[0] run return 1
data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "more_bone"
data modify storage sanct:storage root.build_book.ritual.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.ritual.more_bone.price.color","interpret":true,"extra":[" bone"]}],description:[{"text":"§7Skeletons§r drop "},{"storage":"sanct:storage","nbt":"root.ritual.more_bone.count"},{"storage":"sanct:storage","nbt":"root.ritual.more_bone.description_arrow"},{"storage":"sanct:storage","nbt":"root.ritual.more_bone.count_next","color":"green"}," more §7Bone§r."]}
data modify storage sanct:storage root.build_book.ritual.list[-1].title set from storage sanct:storage root.ritual.more_bone.title_book[-1]

# Fetch spell price
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.ritual.more_bone.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_bone.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_bone.price[-1]","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_bone.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_bone.price[-1]","color":"dark_red"}