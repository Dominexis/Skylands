
tag @s remove pc.walk.intent
execute as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/entity/walk/entity/passive/per with entity @s data.intent

# if (occupied == false) :
execute unless function pc:sys/entity/walk/is_occupied run return run function pc:sys/entity/walk/entity/move

# else :
    # if (unhindered == true && (tag=pc.walk.intent) is exist) :
execute if data entity @s data.is_unhindered as @n[tag=pc.walk.intent,type=minecraft:marker,distance=..100] at @s run return run function pc:sys/entity/walk/entity/loop

    # else :
function pc:sys/entity/intent/interrupt
function pc:sys/entity/walk/entity/clear