# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.ritual.more_flesh.title_book[0] run return 1
data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "more_flesh"
data modify storage sanct:storage root.build_book.ritual.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.ritual.more_flesh.price.color","interpret":true,"extra":[" bone"]}],description:["§2Zombies§r have a ",{"storage":"sanct:storage","nbt":"root.ritual.more_flesh.chance"},{"storage":"sanct:storage","nbt":"root.ritual.more_flesh.description_arrow"},{"storage":"sanct:storage","nbt":"root.ritual.more_flesh.chance_next[-1]","color":"green"},"§a%§r chance of\ndropping ",{"storage":"sanct:storage","nbt":"root.ritual.more_flesh.count"},{"storage":"sanct:storage","nbt":"root.ritual.more_flesh.description_arrow"},{"storage":"sanct:storage","nbt":"root.ritual.more_flesh.count_next","color":"green"}," more §2Rotten Flesh§r."]}
data modify storage sanct:storage root.build_book.ritual.list[-1].title set from storage sanct:storage root.ritual.more_flesh.title_book[-1]

# Final upgrade
execute unless data storage sanct:storage root.ritual.more_flesh.chance_next[0] run data modify storage sanct:storage root.build_book.ritual.list[-1].description set value "§2Zombies§r have a 100% chance of\ndropping 3 §a-> 5§r more §2Rotten Flesh§r."

# Fetch spell price
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.ritual.more_flesh.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_flesh.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_flesh.price[-1]","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_flesh.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_flesh.price[-1]","color":"dark_red"}