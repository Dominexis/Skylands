
# if (block == anyone) :
execute at @e[tag=pc.grid.atker,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if function pc:item/move/minecart/anyone/is run return run function pc:item/move/minecart/anyone/use

# else :
function pc:sys/entity/walk/player
function pc:sys/entity/schedule/use {func:"function pc:sys/combat/turn/end_act",delay:1}