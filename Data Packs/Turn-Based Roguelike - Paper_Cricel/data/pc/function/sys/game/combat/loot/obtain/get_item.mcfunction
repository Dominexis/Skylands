
# effect
scoreboard players set #temp pc.main 0
execute as @a[predicate=sl:player,tag=pc.sys.looter,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"player.cursor":{"predicates":{"minecraft:custom_data":"{pc:{sys.loot:true}}"}}}}} run scoreboard players set #temp pc.main 1
execute as @a[predicate=sl:player,tag=pc.sys.looter,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"weapon.offhand":{"predicates":{"minecraft:custom_data":"{pc:{sys.loot:true}}"}}}}} run scoreboard players set #temp pc.main 2
execute as @a[predicate=sl:player,tag=pc.sys.looter,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"container.*":{"predicates":{"minecraft:custom_data":"{pc:{sys.loot:true}}"}}}}} run scoreboard players set #temp pc.main 3
execute if score #temp pc.main matches 1 run item replace entity @s contents from entity @a[predicate=sl:player,tag=pc.sys.looter,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] player.cursor
execute if score #temp pc.main matches 2 run item replace entity @s contents from entity @a[predicate=sl:player,tag=pc.sys.looter,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] weapon.offhand
execute if score #temp pc.main matches 3 run data modify entity @s item set from entity @a[predicate=sl:player,tag=pc.sys.looter,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Inventory[{components:{"minecraft:custom_data":{pc:{sys.loot:true}}}}]
data modify storage pc:temp loot set from entity @s item.components

kill @s