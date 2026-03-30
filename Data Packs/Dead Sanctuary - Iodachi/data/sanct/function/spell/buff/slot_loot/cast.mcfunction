
# Return if at max level
execute unless data storage sanct:storage root.loaded_player.buff.slot_loot.title_book[0] run return run tellraw @s [{"storage":"sanct:storage","nbt":"root.loaded_player.buff.slot_loot.title_page"},"§c is already at max level"]

# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:bone 0
data modify storage sanct:storage root.material_price.price set from storage sanct:storage root.loaded_player.buff.slot_loot.price[-1]
execute unless predicate sanct:spell/check_affordable run return run tellraw @s ["§cYou don't have the materials to cast ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.slot_loot.title_book[-1]"}]

# Pay price and increase power stat
function sanct:inventory/spend_material/bone with storage sanct:storage root.material_price
scoreboard players add #player_power sanct.numbers 400

# Set inventory and loot status
execute store result score @s sanct.spell.slot_loot store result storage sanct:storage root.loaded_player.buff.slot_loot.count_last byte 1 store result score #var sanct.numbers run data get storage sanct:storage root.loaded_player.buff.slot_loot.count_next
execute store result storage sanct:storage root.loaded_player.buff.slot_loot.count_next byte 1 run scoreboard players add #var sanct.numbers 1

# Gain inventory slots
clear @s[scores={sanct.locked_inventory=1..}] minecraft:skull_pottery_sherd[minecraft:custom_data~{slot_lock:{}}] 2
scoreboard players remove @s sanct.locked_inventory 2


# Cycle name and price
data modify storage sanct:storage root.loaded_player.buff.slot_loot.title_page set from storage sanct:storage root.loaded_player.buff.slot_loot.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.slot_loot.title_book[-1]
data remove storage sanct:storage root.loaded_player.buff.slot_loot.price[-1]

# Announcement
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"yellow"},{"selector":"@s"}," casts ",{"storage":"sanct:storage","nbt":"root.loaded_player.buff.slot_loot.title_page"}]
function sanct:inventory/page/update

# Gain random items from empty_inventory
execute if entity @s[advancements={sanct:tags={empty_inventory=true}},scores={sanct.locked_inventory=..-1}] rotated ~ 0 positioned ^ ^1.5 ^1 run function sanct:spell/buff/empty_inventory/loot