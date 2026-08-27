
# Return if already purchased
execute if score #player_drops sanct.numbers matches 1.. run return 1

# Basic information
data modify storage sanct:storage root.build_book.ritual.seperators append value "\n§5§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.ritual append value "player_drops"
data modify storage sanct:storage root.build_book.ritual.list append value {title:"§7§lDEATH IDOL",description:["When §dPlayers§r die, they leave gravestones\nthat store the materials they would have\nlost."]}

# Set price number and material to green if so
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.ritual.list[-1].price set value "\nCost: §21 bone"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.ritual.list[-1].price set value "\nCost: §41 bone"