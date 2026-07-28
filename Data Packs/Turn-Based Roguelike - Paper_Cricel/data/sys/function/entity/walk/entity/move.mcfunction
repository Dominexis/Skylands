
execute as @e[tag=pc.atker,limit=1] facing entity @s feet run rotate @s ~180 0
data modify entity @e[tag=pc.atker,limit=1] Pos[0] set from entity @s Pos[0]
data modify entity @e[tag=pc.atker,limit=1] Pos[2] set from entity @s Pos[2]

# if (has other intent) :
execute if entity @e[tag=pc.walk.intent,type=marker,limit=1] as @e[tag=pc.atker,limit=1] run return run function sys:entity/schedule/use {func:"execute as @n[tag=pc.walk.intent,type=minecraft:marker] at @s run function sys:entity/walk/entity/loop",delay:10}

# else :
function sys:entity/walk/entity/clear