## (tag) pc.atker

tag @e[tag=pc.intent.now,nbt={data:{is_walk:1b}},type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.walk.intent

# if (intent == walk) :
execute as @n[tag=pc.walk.intent,type=minecraft:marker,distance=..100] at @s run return run function pc:sys/entity/walk/entity/loop

# else :
function pc:sys/entity/walk/entity/passive/clear with entity @s data.intent