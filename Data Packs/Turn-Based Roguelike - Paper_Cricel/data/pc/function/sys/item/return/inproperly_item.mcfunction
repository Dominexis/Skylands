
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{pc:{sys.loot:true}}}}]
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{pc:{sys.shop:true}}}}]
data modify entity @s Items set from block ~ ~ ~ Items
data remove block ~ ~ ~ Items

kill @s
execute as @e[type=item,distance=..1] run data modify entity @s Glowing set value 1b