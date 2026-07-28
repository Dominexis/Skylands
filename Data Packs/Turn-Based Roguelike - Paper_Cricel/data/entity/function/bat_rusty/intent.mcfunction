
execute if score $combat.round pc.game matches 6 run return run data modify storage pc:temp intent.intents set value [{id:"buff1"}]

scoreboard players operation #mod pc.main = $combat.round pc.game
scoreboard players operation #mod pc.main %= #4 sl.value
execute if score #mod pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:"debuff1"}]

function sys:utils/math/get {id:"entity @s data.combat.nohit"}
execute if score #var pc.main matches 3 run return run data modify storage pc:temp intent.intents set value [{id:"walk1"}]

data modify storage pc:temp range set value {type:'5x5',mode:'detect',target:'ally'}
execute if function sys:grid/range/use run return run data modify storage pc:temp intent.intents set value [{id:"attack2",weight:3},{id:"attack1",weight:2}]

data modify storage pc:temp intent.intents set value [{id:"attack1",weight:3},{id:"attack2",weight:2}]