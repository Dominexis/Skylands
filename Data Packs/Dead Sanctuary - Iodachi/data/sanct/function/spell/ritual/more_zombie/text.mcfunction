# Return if spell maxed or if barier is unlocked
execute unless data storage sanct:storage root.ritual.more_zombie.title_book[0] run return 1
execute if score #barrier_unlocked sanct.numbers matches 1.. run return 1

data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "more_zombie"
data modify storage sanct:storage root.build_book.ritual.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.ritual.more_zombie.price.color","interpret":true,"extra":[" rotten flesh"]}],description:[{"text":"§9RAISE ZOMBIES§r summons "},{score:{name:"#summon_zombie_count",objective:"sanct.numbers"}}," §a-> ",{"storage":"sanct:storage","nbt":"root.ritual.more_zombie.count_scale[-1]","color":"green"}," §2Zombies§r\nand they have ",{"storage":"sanct:storage","nbt":"root.ritual.more_zombie.health_decrease_last"},{"storage":"sanct:storage","nbt":"root.ritual.more_zombie.description_arrow"},{"storage":"sanct:storage","nbt":"root.ritual.more_zombie.health_decrease_next","color":"green"},"§a%§r less health."]}
data modify storage sanct:storage root.build_book.ritual.list[-1].title set from storage sanct:storage root.ritual.more_zombie.title_book[-1]

# Fetch spell price
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.ritual.more_zombie.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_zombie.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_zombie.price[-1]","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.ritual.more_zombie.price.color set value {"storage":"sanct:storage","nbt":"root.ritual.more_zombie.price[-1]","color":"dark_red"}