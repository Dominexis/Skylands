
execute if score @s sanct.respawn_timer matches 1.. run return run advancement grant @s only sanct:tags slot_loot_dead
advancement revoke @s only sanct:tags slot_loot_dead

loot spawn ~ ~ ~ loot sanct:spell/slot_loot/get_item
execute if score @s sanct.spell.slot_loot matches 2.. run loot spawn ~ ~ ~ loot sanct:spell/slot_loot/get_item
execute if score @s sanct.spell.slot_loot matches 3.. run loot spawn ~ ~ ~ loot sanct:spell/slot_loot/get_item
execute if score @s sanct.spell.slot_loot matches 4.. run loot spawn ~ ~ ~ loot sanct:spell/slot_loot/get_item

particle minecraft:block{block_state:"minecraft:raw_gold_block"} ~ ~0.2 ~ 0.2 0.2 0.2 1 12

execute as @e[type=minecraft:item,distance=..0] run data merge entity @s {PickupDelay:0}

tellraw @s ["§2§o - Time grants §f[",{selector:"@e[type=minecraft:item,distance=..0]",separator:"]\n§2§o - Time grants §f["},"]"]