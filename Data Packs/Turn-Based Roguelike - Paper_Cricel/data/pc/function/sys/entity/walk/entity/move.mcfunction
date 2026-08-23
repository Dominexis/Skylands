
execute as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] facing entity @s feet run rotate @s ~180 0
data modify entity @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] Pos[0] set from entity @s Pos[0]
data modify entity @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] Pos[2] set from entity @s Pos[2]

# if (has other intent) :
execute if entity @e[tag=pc.walk.intent,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return run function pc:sys/entity/schedule/use {func:"execute as @n[tag=pc.walk.intent,type=minecraft:marker] at @s run function pc:sys/entity/walk/entity/loop",delay:10}

# else :
function pc:sys/entity/walk/entity/clear