
# effect
summon minecraft:item_display ~ ~1.5 ~ {Tags:["pc.summon","pc.object.mob","pc.mob.ender_eye"],Passengers:[{id:"minecraft:item_display",Tags:["pc.mob.ender_eye.left_wing","pc.object.same_rot"],item:{id:"minecraft:feather",count:1},teleport_duration:10,transformation:{left_rotation:[0.0f,1.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,0.5f],translation:[0.5625f,0.35f,0.004928496f]}},{id:"minecraft:item_display",Tags:["pc.mob.ender_eye.right_wing","pc.object.same_rot"],item:{id:"minecraft:feather",count:1},teleport_duration:10,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,0.5f],translation:[-0.5625f,0.35f,0.004928496f]}}],item:{id:"minecraft:ender_eye",count:1},teleport_duration:10,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.5f],translation:[0.03f,0.025f,0.0f]}}

# Attribute
data modify storage pc:temp summon set value {id:"ender_eye",hp:1200,hpmax:1200,height:0.6f}
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] at @s run function pc:sys/object/summon/use