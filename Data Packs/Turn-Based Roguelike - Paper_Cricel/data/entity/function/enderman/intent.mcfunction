
execute if score $combat.round pc.game matches 3 run return run data modify storage pc:temp intent.intents set value [{id:"debuff1"}]

scoreboard players operation #mod pc.main = $combat.round pc.game
scoreboard players operation #mod pc.main %= #6 sl.value
execute if score #mod pc.main matches 5 run return run data modify storage pc:temp intent.intents set value [{id:"attack3"}]
execute if score #mod pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:"buff1"}]

data modify storage pc:temp intent.intents set value [{id:"attack1",weight:2},{id:"attack2",weight:2},{id:"walk1",weight:1}]

data modify storage pc:temp range set value {type:'5x5',mode:'detect',target:'player'}
execute if function sys:grid/range/use run data modify storage pc:temp intent.intents[{id:"walk1"}].weight set value 3

execute if score $combat.round pc.game matches 5.. run data modify storage pc:temp intent.intents append value {id:"debuff1",weight:2}