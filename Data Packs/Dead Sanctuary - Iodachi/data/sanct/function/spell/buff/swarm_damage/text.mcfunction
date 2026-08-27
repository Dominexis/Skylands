# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.loaded_player.buff.swarm_damage.title_book[0] run return 1
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "swarm_damage"
data modify storage sanct:storage root.build_book.buff.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.buff.swarm_damage.price.color","interpret":true,"extra":[" rotten flesh"]}],description:["Deal ",{"storage":"sanct:storage","nbt":"root.build_book.buff.swarm_damage.description"},"\nenemies around the island."]}
data modify storage sanct:storage root.build_book.buff.list[-1].title set from storage sanct:storage root.loaded_player.buff.swarm_damage.title_book[-1]

# Fetch spell price
execute store result storage sanct:storage root.material_price.price byte 1 store result storage sanct:storage root.build_book.buff.swarm_damage.price.value int 1 run data get storage sanct:storage root.loaded_player.buff.swarm_damage.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.swarm_damage.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.swarm_damage.price.value","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.swarm_damage.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.swarm_damage.price.value","color":"dark_red"}

# Set mouse-over description
data modify storage sanct:storage root.build_book.buff.swarm_damage.description set from storage sanct:storage root.loaded_player.buff.swarm_damage.description[-1]