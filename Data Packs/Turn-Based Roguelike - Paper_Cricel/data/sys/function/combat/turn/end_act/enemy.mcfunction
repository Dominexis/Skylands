
function sys:combat/turn/entity/clear

# if (no intent) :
execute if score #no_intent pc.main matches 1 run return run schedule function sys:combat/turn/enemy/next 1t

# else :
schedule function sys:combat/turn/enemy/next 1s