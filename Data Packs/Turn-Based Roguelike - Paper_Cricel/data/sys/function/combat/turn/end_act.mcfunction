## (exe) : entity

# if (inturn == exist) :
execute unless score @s pc.entity.inturn matches 1 run return run execute as @e[scores={pc.entity.inturn=1},predicate=sys:entity/any_real,limit=1] at @s run function sys:combat/turn/end_act

# else :
execute if score $combat.start pc.game matches 1 run function sys:combat/turn/end_act/2

tag @s remove pc.atker
function sys:grid/range/clear
scoreboard players reset @s pc.entity.inturn
scoreboard players reset $act.running pc.game
scoreboard players reset #no_intent pc.main