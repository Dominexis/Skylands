
scoreboard players operation #mod pc.main = $combat.round pc.game
scoreboard players operation #mod pc.main %= #3 sl.value

execute if score #mod pc.main matches 1 run return run data modify storage pc:temp intent.intents set value [{id:'attack1'}]
execute if score #mod pc.main matches 2 run return run data modify storage pc:temp intent.intents set value [{id:'attack2'}]
execute if score #mod pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:'buff1'}]