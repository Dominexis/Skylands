
scoreboard players operation #mod pc.main = $combat.round pc.game
scoreboard players operation #mod pc.main %= #3 sl.value

scoreboard players operation #mod2 pc.main = $combat.round pc.game
scoreboard players operation #mod2 pc.main %= #2 sl.value

execute if score #mod pc.main matches 1 run return run data modify storage pc:temp intent.intents set value [{id:"debuff1"}]

execute if score #mod pc.main matches 2 if score #mod2 pc.main matches 1 run return run data modify storage pc:temp intent.intents set value [{id:"attack1"}]
execute if score #mod pc.main matches 2 run return run data modify storage pc:temp intent.intents set value [{id:"attack2"}]

execute if score #mod2 pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:"summon1"}]
data modify storage pc:temp intent.intents set value [{id:"summon2"}]