
function sys:entity/intent/summon/3b

data remove storage pc:temp intent.intents[0]
execute if data storage pc:temp intent.intents[0] run return run function sys:entity/intent/summon/3

data modify storage pc:temp intent.intents set from storage pc:temp processed_intents
data remove storage pc:temp processed_intents