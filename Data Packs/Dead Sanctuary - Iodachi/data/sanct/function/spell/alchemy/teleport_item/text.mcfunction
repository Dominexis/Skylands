
# Return if already has one
execute if predicate sanct:inventory/alchemy/teleport_item run return 1

# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "teleport_item"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§4§lENDER HEART",description:"§bTool§r - Cooldown: 1s\nThrows an §dEnder Pearl§r. Regain health\nafter teleporting instead of taking\ndamage."}

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §21 blood"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §41 blood"