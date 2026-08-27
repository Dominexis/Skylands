
# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "gold_apple"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§4§lGOD APPLES",description:"§aConsumable§r - Quantity: 24\nRestores 20 hunger and grants 5 minutes\nof §5Resistance§r, 2 minutes of §eAbsorption IV§r,\nand 20 seconds of §dRegeneration 2§r."}

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §21 blood"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §41 blood"