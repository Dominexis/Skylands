
function pc:sys/combat/turn/entity/clear

# if (no intent) :
execute if score #no_intent pc.main matches 1 run return run schedule function pc:sys/combat/turn/ally/next 1t

# else :
schedule function pc:sys/combat/turn/ally/next 1s