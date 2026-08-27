
# Return if already has one
execute if predicate sanct:inventory/alchemy/undead_finder run return 1

# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "undead_finder"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§2§lLANTERN",description:"§bTool§r\nWhen used, all §2Zombies§r receive\nthe §eGlowing§r effect.\n\nCraft with §71 Bone§r to upgrade."}

# Get if price is affordable
data modify storage sanct:storage root.material_price.price set value 2b

# Set price number and material to green if so
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §22 rotten flesh"

# Otherwise set to red
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §42 rotten flesh"