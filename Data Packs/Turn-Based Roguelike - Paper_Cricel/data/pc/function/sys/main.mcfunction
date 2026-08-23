
function pc:sys/fx/main
function pc:sys/lobby/main

execute as @a[predicate=pc:sys/player/inplot,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/player/main
execute if score $start pc.game matches 1 run function pc:sys/ingame
execute as @e[predicate=pc:sys/entity/item,type=minecraft:item,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/item/main