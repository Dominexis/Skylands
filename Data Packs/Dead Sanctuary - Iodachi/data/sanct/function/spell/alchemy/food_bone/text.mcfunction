
# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "food_bone"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§7§lSTEAKS",description:"§aConsumable§r - Quantity: 12\nRestores 8 hunger."}

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §21 bone"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §41 bone"