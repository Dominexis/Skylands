
# if (repel) :
execute if score #is_repel pc.main matches 1 run return run function pc:item/move/minecart/anyone/repel

# else :
execute unless entity @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/entity/walk/player
function pc:sys/combat/turn/end_act