
execute store result score #rot pc.main run data get entity @s Rotation[0]
execute as @e[predicate=sys:entity/enemy,nbt={data:{effects:[{id:"enmity_gaze"}]}}] at @s run function effect:enmity_gaze/entity/end_act/2