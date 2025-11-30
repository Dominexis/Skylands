
# effect
scoreboard players set #temp pc.main 0
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.looter,limit=1,predicate=sl:player] if predicate {"condition": "minecraft:entity_properties", "entity": "this", "predicate": {"slots": {"player.cursor": {"predicates": {"minecraft:custom_data": "{pc:{sys.shop:true}}"}}}}} run scoreboard players set #temp pc.main 1
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.looter,limit=1,predicate=sl:player] if predicate {"condition": "minecraft:entity_properties", "entity": "this", "predicate": {"slots": {"weapon.offhand": {"predicates": {"minecraft:custom_data": "{pc:{sys.shop:true}}"}}}}} run scoreboard players set #temp pc.main 2
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.looter,limit=1,predicate=sl:player] if predicate {"condition": "minecraft:entity_properties", "entity": "this", "predicate": {"slots": {"container.*": {"predicates": {"minecraft:custom_data": "{pc:{sys.shop:true}}"}}}}} run scoreboard players set #temp pc.main 3
execute if score #temp pc.main matches 1 run item replace entity @s contents from entity @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.looter,limit=1,predicate=sl:player] player.cursor
execute if score #temp pc.main matches 2 run item replace entity @s contents from entity @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.looter,limit=1,predicate=sl:player] weapon.offhand
execute if score #temp pc.main matches 3 run data modify entity @s item set from entity @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.looter,limit=1,predicate=sl:player] Inventory[{components:{"minecraft:custom_data":{pc:{sys.shop:1b}}}}]

execute store result score #cost pc.main run data get entity @s item.components."minecraft:custom_data".pc.shop_cost
data modify storage pc:temp loot set from entity @s item.components."minecraft:custom_data".pc

kill @s