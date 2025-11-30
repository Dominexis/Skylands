
# effect
summon minecraft:item_display ~ ~1 ~ {Tags:["pc.fx.cactus","pc.summon"],item:{id:"minecraft:cactus",count:1},teleport_duration:1,transformation:{left_rotation:[0.70710677f,0.0f,0.0f,0.70710677f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.25f,0.5f,0.25f],translation:[0.0f,0.0f,0.0f]},view_range:2.0f}
rotate @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] ~ 0
tag @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] remove pc.summon