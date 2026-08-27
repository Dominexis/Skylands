
function pc:sys/combat/end/clear

# if (level == exist) :
execute if data storage pc:game levels[0] run return run function pc:sys/combat/tpter/return/has_level/use

# else :
kill @e[type=minecraft:item_display,tag=sl.collectible,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
execute positioned 2176 17 5453 run function sl:collectible/spawn

data modify storage pc:game stat.is_win set from storage pc:lang sys.lobby.end.victory
function pc:sys/lobby/end/use {stat:"win"}