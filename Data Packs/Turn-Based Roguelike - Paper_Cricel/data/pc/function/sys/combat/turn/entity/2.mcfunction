
# if (has intent) :
execute if data entity @s data.intent.intent run return run function pc:sys/combat/turn/entity/2b with entity @s data.intent

# else :
scoreboard players set #no_intent pc.main 1
function pc:sys/combat/turn/end_act