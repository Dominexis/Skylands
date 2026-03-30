
summon minecraft:item ~ ~ ~ {Tags:["pc.temp"],Item:{id:"minecraft:barrier",components:{"minecraft:item_model":"air"}},PickupDelay:-32768s}
execute if items entity @s container.* minecraft:paper[minecraft:custom_data~{pc:{tip_item:1b}}] run data modify entity @e[type=minecraft:item,distance=..1,tag=pc.temp,limit=1] Item set from entity @s Inventory[{components:{"minecraft:custom_data":{pc:{tip_item:1b}}}}]
execute if items entity @s weapon.offhand minecraft:paper[minecraft:custom_data~{pc:{tip_item:1b}}] run data modify entity @e[type=minecraft:item,distance=..1,tag=pc.temp,limit=1] Item set from entity @s equipment.offhand
execute if items entity @s player.cursor minecraft:paper[minecraft:custom_data~{pc:{tip_item:1b}}] run item replace entity @e[type=minecraft:item,distance=..1,tag=pc.temp,limit=1] contents from entity @s player.cursor
tag @e[type=minecraft:item,distance=..1,tag=pc.temp,limit=1] remove pc.temp
clear @s minecraft:paper[minecraft:custom_data~{pc:{tip_item:1b}}]