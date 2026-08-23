
# if (player) :
execute if score $act.team pc.game matches 1 run return run function pc:sys/combat/turn/end_act/player

# elif (ally) :
execute if score $act.team pc.game matches 2 run return run function pc:sys/combat/turn/end_act/ally

# else :
function pc:sys/combat/turn/end_act/enemy