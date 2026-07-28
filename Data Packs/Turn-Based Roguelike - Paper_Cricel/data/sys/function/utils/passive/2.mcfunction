
# if (self == player) :
execute if predicate sys:entity/player run function sys:utils/passive/player/use

# elif (self == grid) :
execute if entity @s[tag=pc.grid] run return run function sys:utils/passive/grid/use

# else :
function sys:utils/passive/entity/use