
# rest area
function pc:sys/game/rest_area/main

# combat
function pc:sys/game/combat/main

# is anyone playing
execute unless entity @a[predicate=pc:player/ingame,predicate=sl:player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/lobby/end/clear