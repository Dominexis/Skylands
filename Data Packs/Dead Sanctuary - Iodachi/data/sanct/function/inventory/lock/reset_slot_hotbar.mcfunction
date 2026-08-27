$clear @s minecraft:skull_pottery_sherd[minecraft:custom_data~{slot_lock:{$(slot):{}}}]
kill @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:item,predicate=sanct:item/slot_lock_thrown]

summon minecraft:item ~ ~ ~ {Tags:["sanct.thrown_item"],Item:{id:"minecraft:egg",components:{"minecraft:item_model":"minecraft:air"}}}
$item replace entity @e[type=minecraft:item,tag=sanct.thrown_item,distance=..0.1,limit=1] contents from entity @s $(slot)
tag @e[type=minecraft:item,tag=sanct.thrown_item,distance=..0.1,limit=1] remove sanct.thrown_item

$item replace entity @s $(slot) with minecraft:skull_pottery_sherd[minecraft:item_model="sanct:hotbar_lock",minecraft:tooltip_display={hide_tooltip:true},minecraft:item_name="",minecraft:max_stack_size=1,minecraft:custom_data={slot_lock:{$(slot):{},hotbar:{}}}]