playsound minecraft:entity.item_frame.remove_item block @a
summon minecraft:item ~ ~ ~ {Age:-32768,Item:{id:"minecraft:egg",components:{"minecraft:item_model":"minecraft:air"}},Motion:[0,0.2,0],Tags:["sanct.item_pickup"]}
execute on passengers run data modify entity @e[type=minecraft:item,distance=..0.0001,tag=sanct.item_pickup,limit=1] Item set from entity @s item
execute on passengers run kill @s
execute if entity @s[tag=sanct.item_pickup_stand] run kill @e[type=minecraft:armor_stand,tag=sanct.item_pickup,distance=..1.7,limit=1]
kill @s