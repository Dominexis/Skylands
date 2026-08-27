
# Return if already has one
execute if predicate sanct:inventory/alchemy/horse_crossbow run return 1

# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "horse_crossbow"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§7§lCROSSBOW",description:"§6Weapon (Ranged)§r - Damage: 7\nUnlimited ammo. §7Skeleton Horses§r\ndie in one shot."}

# Get if price is affordable
data modify storage sanct:storage root.material_price.price set value 2s

# Set price number and material to green if so
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §22 bone"

# Otherwise set to red
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §42 bone"