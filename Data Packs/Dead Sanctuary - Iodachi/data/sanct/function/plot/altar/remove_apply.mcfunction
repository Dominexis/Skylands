playsound minecraft:entity.item_frame.remove_item block @a

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:egg",components:{"minecraft:item_model":"minecraft:air"}},Motion:[0,0.2,-0.1],Tags:["sanct.altar"]}
data modify entity @e[type=minecraft:item,distance=..0.0001,tag=sanct.altar,limit=1] Item set from entity @e[type=minecraft:glow_item_frame,distance=..0.06,limit=1] Item

item replace entity @e[type=minecraft:glow_item_frame,distance=..0.06,limit=1] contents with minecraft:air
tag @e[type=minecraft:glow_item_frame,distance=..0.06,limit=1] remove sanct.has_item

kill @s