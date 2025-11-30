
# effect
execute store success score #is_player pc.main if entity @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.player,tag=pc.object.now,predicate=pc:object/all]
execute if score #is_player pc.main matches 1 as @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.object.now,predicate=pc:object/all] at @s run function pc:sys/player/rc/clear
execute if score #is_player pc.main matches 0 as @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.object.now,predicate=pc:object/all] at @s run function pc:sys/object/turn/per/clear
execute if score #is_player pc.main matches 0 run function pc:sys/object/turn/acting/next

# fx