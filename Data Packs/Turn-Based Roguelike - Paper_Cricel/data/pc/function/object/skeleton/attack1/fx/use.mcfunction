
# effect
summon minecraft:item_display ~ ~0.5 ~ {Tags:["pc.fx.skeleton.2","pc.fx","pc.summon"],item:{id:"minecraft:arrow",count:1},transformation:{left_rotation:[0.6459742f,0.28760624f,-0.28760624f,0.6459742f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},teleport_duration:1}
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] run rotate @s ~ 0
tag @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon,limit=1] remove pc.summon

# fx
playsound minecraft:entity.skeleton.shoot master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~