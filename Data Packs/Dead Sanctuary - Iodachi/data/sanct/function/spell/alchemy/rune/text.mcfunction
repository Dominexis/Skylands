
# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "rune"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§2§lRUNE",description:"§bTool (Passive)§r\nWhen in inventory, deal §a0.5§r more damage.\n\nCraft with §71 Bone§r to upgrade."}

# Get if price is affordable
data modify storage sanct:storage root.material_price.price set value 2b

# Set price number and material to green if so
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §22 rotten flesh"

# Otherwise set to red
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §42 rotten flesh"