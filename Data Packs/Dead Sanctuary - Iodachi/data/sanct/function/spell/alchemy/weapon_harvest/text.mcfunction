
# Return if already has one
execute if predicate sanct:inventory/alchemy/weapon_harvest run return 1

# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "weapon_harvest"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§7§lFISHING ROD",description:"§6Weapon§r - Damage: 9, Attack Speed: 0.8\nIf killed while hooked, enemies §7§o(except§r\n§4§oVampires§r§7§o)§r drop 1 more material."}

# Get if price is affordable
data modify storage sanct:storage root.material_price.price set value 2s

# Set price number and material to green if so
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §22 bone"

# Otherwise set to red
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §42 bone"