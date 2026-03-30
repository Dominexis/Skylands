advancement revoke @s only sanct:inventory_item_use

# Gain inventory slot
clear @s[scores={sanct.locked_inventory=1..}] minecraft:skull_pottery_sherd[minecraft:custom_data~{slot_lock:{}}] 1
scoreboard players remove @s sanct.locked_inventory 1

# Gain random item from empty_inventory
execute if entity @s[advancements={sanct:tags={empty_inventory=true}},scores={sanct.locked_inventory=..-1}] rotated ~ 0 positioned ^ ^1.5 ^1 run return run function sanct:spell/buff/empty_inventory/loot

playsound minecraft:block.shulker_box.open player @a[distance=..16] ~ ~ ~ 1 1.2
title @s actionbar "§6Inventory slot unlocked!"