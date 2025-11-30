
summon item ~ ~ ~ {Tags:[pc.temp],Item:{id:"barrier",components:{item_model:"air"}},PickupDelay:-32768s}
execute if items entity @s container.* paper[custom_data~{pc:{tip_item:true}}] run data modify entity @e[type=item,tag=pc.temp,distance=..1,limit=1] Item set from entity @s Inventory[{components:{"minecraft:custom_data":{pc:{tip_item:true}}}}]
execute if items entity @s weapon.offhand paper[custom_data~{pc:{tip_item:true}}] run data modify entity @e[type=item,tag=pc.temp,distance=..1,limit=1] Item set from entity @s equipment.offhand
execute if items entity @s player.cursor paper[custom_data~{pc:{tip_item:true}}] run item replace entity @e[type=item,tag=pc.temp,distance=..1,limit=1] contents from entity @s player.cursor
tag @e[type=item,tag=pc.temp,distance=..1,limit=1] remove pc.temp
clear @s paper[custom_data~{pc:{tip_item:true}}]