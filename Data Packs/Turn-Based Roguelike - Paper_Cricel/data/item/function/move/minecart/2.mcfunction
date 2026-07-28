
# if (block == anyone) :
execute at @e[tag=pc.grid.atker,type=marker,limit=1] if function item:move/minecart/anyone/is run return run function item:move/minecart/anyone/use

# else :
function sys:entity/walk/player
function sys:entity/schedule/use {func:"function sys:combat/turn/end_act",delay:1}