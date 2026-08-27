
execute store result score #damage pc.main run data get entity @s data.damage
execute if entity @e[predicate=pc:sys/entity/victim,predicate=pc:sys/entity/ally,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/entity/dmg/atker
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:entity/ender_dragon/walk1/dash/2c

kill @s