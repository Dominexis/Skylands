
# player
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] at @s run function pc:sys/game/combat/end/return/has_level/player with storage pc:game coord

# rest area
function pc:sys/game/rest_area/start_button/use with storage pc:game coord

# restock
function pc:sys/game/rest_area/campfire/restock
function pc:sys/game/rest_area/trader/restock/all