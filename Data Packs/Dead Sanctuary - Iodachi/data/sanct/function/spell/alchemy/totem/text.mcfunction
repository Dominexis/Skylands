
# Return if already has one
execute if predicate sanct:inventory/alchemy/totem run return 1

# Basic information
data modify storage sanct:storage root.build_book.alchemy.seperators append value "\n§3§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.alchemy append value "totem"
data modify storage sanct:storage root.build_book.alchemy.list append value {title:"§7§lBATTLE TOTEM",description:"§bTool§r\nCan be placed and picked up.\nWhen placed, §dPlayers§r within 5 blocks deal\n§63 more damage§f and take §520% less damage§f."}

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §21 bone"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.alchemy.list[-1].price set value "\nCost: §41 bone"