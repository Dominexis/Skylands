
# Return if already purchased
execute if entity @s[advancements={sanct:tags={shield=true}}] run return 1

# Basic information
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "shield"
data modify storage sanct:storage root.build_book.buff.list append value {title:"§7§lKINETIC BARRIER",description:"Puts a §bShield§r in your offhand that grants\n5 seconds of §bSpeed§r after you block an\nattack."}

# Set price number and material to green if so
execute unless data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.buff.list[-1].price set value "\nCost: §21 bone"

# Otherwise set to red
execute if data storage sanct:storage {root:{material_price:{has_quantity:0s}}} run data modify storage sanct:storage root.build_book.buff.list[-1].price set value "\nCost: §41 bone"