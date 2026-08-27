
function sanct:player/storage/load

# Runes
function sanct:spell/alchemy/rune/update_effects

# Empty inventory
execute if data storage sanct:storage root.loaded_player.buff.empty_inventory run function sanct:spell/buff/empty_inventory/apply with storage sanct:storage root.loaded_player.buff.empty_inventory

# Revenge
execute if entity @s[advancements={sanct:spell/revenge={level1=true}}] run function sanct:spell/buff/revenge/effect/give_attributes

# Slot attack speed
execute if data storage sanct:storage root.loaded_player.buff.slot_attack_speed.stat run function sanct:spell/buff/slot_attack_speed/apply with storage sanct:storage root.loaded_player.buff.slot_attack_speed.stat

# Stat health
execute if data storage sanct:storage root.loaded_player.buff.slot_health.stat run function sanct:spell/buff/slot_health/apply with storage sanct:storage root.loaded_player.buff.slot_health.stat

# Slot reach
execute if data storage sanct:storage root.loaded_player.buff.slot_reach.stat run function sanct:spell/buff/slot_reach/apply with storage sanct:storage root.loaded_player.buff.slot_reach.stat

# Basic speed
execute if data storage sanct:storage root.ritual.basic_speed.stat run function sanct:spell/ritual/basic_speed/apply with storage sanct:storage root.ritual.basic_speed.stat

# No danger
execute if score #no_danger sanct.numbers matches 1.. run function sanct:spell/ritual/no_danger/apply with storage sanct:storage root.ritual.no_danger.stat

# Saturation
#effect give @s[advancements={sanct:tags={saturation=true}}] minecraft:saturation infinite 0 true

effect give @s minecraft:regeneration 1 255 true