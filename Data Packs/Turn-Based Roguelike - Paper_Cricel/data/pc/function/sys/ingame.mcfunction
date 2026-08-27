
function pc:sys/rest_area/main
function pc:sys/combat/main
execute as @e[predicate=pc:sys/entity/any_real,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/entity/main

# if (any player) :
execute unless entity @a[predicate=pc:sys/player/ingame,predicate=sl:player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/lobby/end/clear