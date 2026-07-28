
scoreboard players operation #mod pc.main = $combat.round pc.game
scoreboard players operation #mod pc.main %= #3 sl.value
execute if score #mod pc.main matches 0 run return run data modify storage pc:temp intent.intents set value [{id:"debuff2"}]

scoreboard players operation #hp pc.main = @s pc.hp
scoreboard players operation #hp pc.main *= #10 sl.value
scoreboard players operation #hp pc.main /= @s pc.hpmax
execute if score #hp pc.main matches ..5 unless entity @s[tag=pc.entity.ender_dragon.buff1.used] run return run data modify storage pc:temp intent.intents set value [{id:"buff1"}]

data modify storage pc:temp intent.intents set value [{id:"attack1",weight:2},{id:"attack2",weight:2},{id:"walk1",weight:2},{id:"debuff1",weight:2}]

data modify storage pc:temp range set value {type:'5x5',mode:'detect',target:'player'}
execute unless function sys:grid/range/use run return fail

data modify storage pc:temp intent.intents[{id:"attack1"}].weight set value 3
data modify storage pc:temp intent.intents[{id:"attack2"}].weight set value 3