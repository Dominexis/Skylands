
# if (round == 4) :
scoreboard players operation #mod pc.main = $combat.round pc.game
scoreboard players operation #mod pc.main %= #4 sl.value
execute if score #mod pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:"buff1"}]

# elif (ally > 5x5) :
data modify storage pc:temp range set value {type:'5x5',mode:'detect',target:'ally',condition:"unless"}
execute if function sys:grid/range/use run return run data modify storage pc:temp intent.intents set value [{id:"attack2",weight:3},{id:"walk1",weight:2}]

# else :
data modify storage pc:temp intent.intents set value [{id:"attack1",weight:3},{id:"walk1",weight:2}]