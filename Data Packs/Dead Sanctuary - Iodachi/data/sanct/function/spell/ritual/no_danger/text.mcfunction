
# Return if already purchased
execute if score #no_danger sanct.numbers matches 1.. run return 1

# Basic information
data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "no_danger"
data modify storage sanct:storage root.build_book.ritual.list append value {title:"§4§lPURIFICATION",description:"The §4DANGER§r timer increases §dPlayer§r\nstats instead of enemy stats."}

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.ritual.list[-1].price set value "\nCost: §21 blood"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.ritual.list[-1].price set value "\nCost: §41 blood"