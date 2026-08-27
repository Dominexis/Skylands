
summon minecraft:item_display ^ ^ ^ {Tags:["pc.entity.ender_eye.attack1","pc.entity.ender_eye.attack1.mid","pc.summon"],fall_distance:0.0d,item:{id:"minecraft:ender_eye",count:1},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,2.0f,1.0f],translation:[0.035f,0.05f,0.0f]}}
summon minecraft:item_display ^2.4 ^ ^ {Tags:["pc.entity.ender_eye.attack1","pc.entity.ender_eye.attack1.left","pc.summon"],fall_distance:0.0d,item:{id:"minecraft:ender_eye",count:1},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,2.0f,1.0f],translation:[0.035f,0.05f,0.0f]}}
summon minecraft:item_display ^-2.4 ^ ^ {Tags:["pc.entity.ender_eye.attack1","pc.entity.ender_eye.attack1.right","pc.summon"],fall_distance:0.0d,item:{id:"minecraft:ender_eye",count:1},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.5f,2.0f,1.0f],translation:[0.035f,0.05f,0.0f]}}

execute as @e[tag=pc.summon,type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run rotate @s ~ 0

tag @e[tag=pc.summon,type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound pc:sys/teleport master @a ~ ~1024 ~ 0 1 0.5