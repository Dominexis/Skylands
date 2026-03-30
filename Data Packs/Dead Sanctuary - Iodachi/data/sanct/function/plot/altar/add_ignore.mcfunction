stopsound @s neutral minecraft:entity.glow_item_frame.add_item

execute as @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=minecraft:glow_item_frame,predicate=sanct:item/altar/ignore] run item replace entity @s contents with minecraft:air

execute if entity @s[advancements={sanct:altar/add_ignore={add_page=true}}] run function sanct:inventory/page/missing
execute if entity @s[advancements={sanct:altar/add_ignore={add_slot_lock=true}}] run function sanct:inventory/lock/hotbar

advancement revoke @s only sanct:altar/add_ignore