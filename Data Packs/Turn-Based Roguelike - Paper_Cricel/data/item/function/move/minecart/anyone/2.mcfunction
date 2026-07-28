
# if (repel) :
execute if score #is_repel pc.main matches 1 run return run function item:move/minecart/anyone/repel

# else :
execute unless entity @e[predicate=sys:entity/victim,limit=1] run function sys:entity/walk/player
function sys:combat/turn/end_act