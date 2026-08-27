
# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "food_flesh"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§2§lBREAD (WEAPON)",description:"§6Weapon§r - Damage: 2.5, Attack Speed: 0.8\n§aConsumable§r - Restores 5 hunger.\n\nCraft with §21 Rotten Flesh§r to upgrade."}

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §21 rotten flesh"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §41 rotten flesh"