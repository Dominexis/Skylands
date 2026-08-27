
summon minecraft:item_display ~ ~ ~ {Tags:["pc.fx","pc.entity.blaze_magma.attack1","pc.summon"],billboard:"center",brightness:{block:15,sky:15},fall_distance:0.0d,item:{id:"minecraft:fire_charge",count:1},shadow_strength:0.0f,teleport_duration:1,transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.25f,1.25f,0.01f],translation:[0.0f,0.0f,0.0f]},view_range:2.0f}

rotate @e[tag=pc.summon,type=minecraft:item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ 0

tag @e[tag=pc.summon,type=minecraft:item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon