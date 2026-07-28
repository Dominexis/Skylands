
function sys:combat/end/clear

# if (level == exist) :
execute if data storage pc:game levels[0] run return run function sys:combat/tpter/return/has_level/use

# else :
kill @e[type=minecraft:item_display,tag=sl.collectible]
execute positioned 2176 17 5453 run function sl:collectible/spawn

data modify storage pc:game stat.is_win set from storage pc:lang sys.lobby.end.victory
function sys:lobby/end/use {stat:"win"}