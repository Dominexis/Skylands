
# if (self == death) :
execute if entity @s[tag=pc.entity.death] run return fail

# elif (mode == heal) :
execute if data storage pc:temp damage{mode:"heal"} run return run function sys:entity/dmg/victim/heal

# else :
function sys:entity/dmg/victim/hurt