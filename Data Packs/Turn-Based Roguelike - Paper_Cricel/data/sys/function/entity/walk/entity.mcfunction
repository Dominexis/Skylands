## (tag) pc.atker

tag @e[tag=pc.intent.now,nbt={data:{is_walk:1b}},type=minecraft:marker] add pc.walk.intent

# if (intent == walk) :
execute as @n[tag=pc.walk.intent,type=minecraft:marker,distance=..100] at @s run return run function sys:entity/walk/entity/loop

# else :
function sys:entity/walk/entity/passive/clear with entity @s data.intent