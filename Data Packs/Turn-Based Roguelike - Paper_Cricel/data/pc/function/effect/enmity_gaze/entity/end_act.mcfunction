
execute store result score #rot pc.main run data get entity @s Rotation[0]
execute as @e[predicate=pc:sys/entity/enemy,nbt={data:{effects:[{id:"enmity_gaze"}]}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:effect/enmity_gaze/entity/end_act/2