
# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "pill_health"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§2§lHEALTH BREWS",description:"§aConsumable§r - Quantity: 6, Cooldown: 10s\nInstantly restores 4 health."}

# Get if price is affordable
data modify storage sanct:storage root.material_price.price set value 3b

# Set price number and material to green if so
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §23 rotten flesh"

# Otherwise set to red
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §43 rotten flesh"