# Return if spell maxed
execute unless data storage sanct:storage root.ritual.zombie_armor.title_book[0] run return 1
execute if score #barrier_unlocked sanct.numbers matches 1.. run return 1

data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "zombie_armor"
data modify storage sanct:storage root.build_book.ritual.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.ritual.zombie_armor.price.color","interpret":true,"extra":[" rotten flesh"]}],description:[{"text":"§9RAISE ZOMBIES§r summons 1 §2Zombie§r with\n"},{"storage":"sanct:storage","nbt":"root.ritual.zombie_armor.description[-1]","interpret":true}," armor that it drops\nwhen killed."]}
data modify storage sanct:storage root.build_book.ritual.list[-1].title set from storage sanct:storage root.ritual.zombie_armor.title_book[-1]

# Fetch spell price
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.ritual.zombie_armor.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.zombie_armor.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.zombie_armor.price[-1]","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.zombie_armor.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.zombie_armor.price[-1]","color":"dark_red"}