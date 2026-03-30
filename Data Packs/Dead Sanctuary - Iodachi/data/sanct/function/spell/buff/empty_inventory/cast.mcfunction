
# Return if already purchased
execute if entity @s[advancements={sanct:tags={empty_inventory=true}}] run return run tellraw @s "§4§lDIMENSION BREAK§c is already at max level"

# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:fermented_spider_eye 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to cast §4§lDIMENSION BREAK"

# Increase power stat
scoreboard players add #player_power sanct.numbers 1600

# Unlock inventory
clear @s minecraft:skull_pottery_sherd[minecraft:custom_data~{slot_lock:{}}]
scoreboard players remove @s sanct.locked_inventory 33

# Announcement
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"yellow"},{"selector":"@s"},{"text":" casts §4§lDIMENSION BREAK"}]

function sanct:inventory/page/update

# Get random items
advancement grant @s only sanct:tags empty_inventory
execute if score @s sanct.locked_inventory matches ..-1 rotated ~ 0 positioned ^ ^1.5 ^1 run function sanct:spell/buff/empty_inventory/loot
execute if predicate sanct:spell/empty_inventory_item/can_replace run function sanct:spell/buff/empty_inventory/inventory_item/replace