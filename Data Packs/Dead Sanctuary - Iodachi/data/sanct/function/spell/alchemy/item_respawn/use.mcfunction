advancement revoke @s only sanct:spell/item_respawn_use

playsound minecraft:block.portal.ambient player @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] ~ ~ ~ 2 1 0.3

effect give @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] minecraft:instant_health 1 80 true
effect give @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] minecraft:saturation 1 255 true
effect give @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] minecraft:hunger 2 255 true

kill @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:interactable_item,tag=sanct.item_pickup]
function sanct:plot/on/summon_item_pickups

execute at @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:interaction,tag=sanct.item_pickup] run particle minecraft:block{block_state:"minecraft:raw_gold_block"} ~ ~0.2 ~ 0.2 0.2 0.2 1 12
particle minecraft:reverse_portal ~ ~ ~ 0 0 0 2 500
execute anchored eyes run particle minecraft:item{item:"minecraft:clock"} ^ ^ ^0.5 0.2 0.2 0.2 0.1 5