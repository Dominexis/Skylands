
# player
execute as @a[predicate=pc:sys/player/ingame,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/combat/tpter/return/has_level/player with storage pc:game coord

# rest area
function pc:sys/rest_area/start_button/summon with storage pc:game coord

# restock
function pc:sys/rest_area/campfire/restock
function pc:sys/rest_area/trader/restock