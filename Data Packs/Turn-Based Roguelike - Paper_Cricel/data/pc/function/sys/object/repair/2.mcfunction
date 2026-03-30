
# effect
data modify storage pc:temp repair.object_data.repair_info.category set from storage pc:temp repair.item.category
execute store result storage pc:temp repair.object_data.repair_info.owner int 1 run scoreboard players get @s sl.id

execute as @n[type=!minecraft:player,distance=..100,tag=pc.repair.now] at @s run function pc:sys/object/repair/object/2
function pc:sys/object/repair/3 with storage pc:temp repair.item

# fx
playsound minecraft:block.anvil.use master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.25 0.75
playsound minecraft:entity.arrow.hit_player master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.65 1.25