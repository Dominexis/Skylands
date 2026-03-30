
# Return if at max level
execute unless data storage sanct:storage root.loaded_player.buff.slot_reach.title_book[0] run return run tellraw @s [{"storage":"sanct:storage","nbt":"root.loaded_player.buff.slot_reach.title_page"},"§c is already at max level"]

# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:bone 0
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.loaded_player.buff.slot_reach.price[-1]
execute unless predicate sanct:spell/check_affordable run return run tellraw @s ["§cYou don't have the materials to cast ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.slot_reach.title_book[-1]"}]

# Pay price and increase power stat
function sanct:inventory/spend_material/bone with storage sanct:storage root.material_price
scoreboard players add #player_power sanct.numbers 400

# Reset previous buff
attribute @s minecraft:entity_interaction_range modifier remove sanct:slot_reach

# Gain reach
execute store result storage sanct:storage root.loaded_player.buff.slot_reach.stat.reach float 0.25 store result score #count sanct.numbers run data get storage sanct:storage root.loaded_player.buff.slot_reach.count_next
execute store result storage sanct:storage root.loaded_player.buff.slot_reach.count_next byte 1 run scoreboard players add #count sanct.numbers 1
function sanct:spell/buff/slot_reach/apply with storage sanct:storage root.loaded_player.buff.slot_reach.stat

# Gain inventory slot
clear @s[scores={sanct.locked_inventory=1..}] minecraft:skull_pottery_sherd[minecraft:custom_data~{slot_lock:{}}] 3
scoreboard players remove @s sanct.locked_inventory 3


# Cycle name and price
data modify storage sanct:storage root.loaded_player.buff.slot_reach.title_page set from storage sanct:storage root.loaded_player.buff.slot_reach.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.slot_reach.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.slot_reach.price[-1]

# Announcement
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"yellow"},{"selector":"@s"}," casts ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.slot_reach.title_page"}]
function sanct:inventory/page/update

# Gain random item from empty_inventory
execute if entity @s[advancements={sanct:tags={empty_inventory=true}},scores={sanct.locked_inventory=..-1}] rotated ~ 0 positioned ^ ^1.5 ^1 run function sanct:spell/buff/empty_inventory/loot