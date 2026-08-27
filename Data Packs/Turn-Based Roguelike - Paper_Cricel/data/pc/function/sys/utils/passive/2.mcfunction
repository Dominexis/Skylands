
# if (self == player) :
execute if predicate pc:sys/entity/player run function pc:sys/utils/passive/player/use

# elif (self == grid) :
execute if entity @s[tag=pc.grid] run return run function pc:sys/utils/passive/grid/use

# else :
function pc:sys/utils/passive/entity/use