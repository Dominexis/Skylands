
# Return if already purchased
execute if entity @s[advancements={sanct:tags={saturation=true}}] run return 1

# Basic information
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "saturation"
data modify storage sanct:storage root.build_book.buff.list append value {title:"§4§lIMMORTALITY",description:"Your hunger bar is always full."}

# Set price number and material to green if affordable
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.buff.list[-1].price set value "\nCost: §21 blood"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0b}}} run data modify storage sanct:storage root.build_book.buff.list[-1].price set value "\nCost: §41 blood"