
tag @s remove pc.walk.intent
execute as @e[tag=pc.atker,limit=1] run function sys:entity/walk/entity/passive/per with entity @s data.intent

# if (occupied == false) :
execute unless function sys:entity/walk/is_occupied run return run function sys:entity/walk/entity/move

# else :
    # if (unhindered == true && (tag=pc.walk.intent) is exist) :
    execute if data entity @s data.is_unhindered as @n[tag=pc.walk.intent,type=minecraft:marker,distance=..100] at @s run return run function sys:entity/walk/entity/loop

    # else :
    function sys:entity/intent/interrupt
    function sys:entity/walk/entity/clear