
data modify storage pc:temp intent.intents set value [{id:"attack1",weight:3},{id:"debuff1",weight:2},{id:"buff1"}]
execute if data entity @s data.intent{combat:["buff1"]} run return run data remove storage pc:temp intent.intents[{id:"buff1"}]