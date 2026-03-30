# Return if spell maxed or barrier is unlocked
execute unless data storage sanct:storage root.ritual.more_vampire.title_book[0] run return 1
execute if score #barrier_unlocked sanct.numbers matches 1.. run return 1

data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "more_vampire"
data modify storage sanct:storage root.build_book.ritual.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.ritual.more_vampire.price.color","interpret":true,"extra":[" blood"]}],description:[{"text":"§9RAISE VAMPIRES§r summons "},{score:{name:"#summon_vampire_count",objective:"sanct.numbers"}}," §a-> ",{"storage":"sanct:storage","nbt":"root.ritual.more_vampire.count_scale[-1]","color":"green"}," §4Vampires§r\nand they have ",{"storage":"sanct:storage","nbt":"root.ritual.more_vampire.health_decrease_last"},{"storage":"sanct:storage","nbt":"root.ritual.more_vampire.description_arrow"},{"storage":"sanct:storage","nbt":"root.ritual.more_vampire.health_decrease_next","color":"green"},"§a%§r less health."]}
data modify storage sanct:storage root.build_book.ritual.list[-1].title set from storage sanct:storage root.ritual.more_vampire.title_book[-1]

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.ritual.list[-1].price set value "\nCost: §21 blood"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.ritual.list[-1].price set value "\nCost: §41 blood"