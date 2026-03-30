
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{pc:{sys.loot:1b}}}}]
data remove block ~ ~ ~ Items[{components:{"minecraft:custom_data":{pc:{sys.shop:1b}}}}]
data modify entity @s Items set from block ~ ~ ~ Items
data remove block ~ ~ ~ Items

kill @s
execute as @e[type=minecraft:item,distance=..1] run data modify entity @s Glowing set value 1b