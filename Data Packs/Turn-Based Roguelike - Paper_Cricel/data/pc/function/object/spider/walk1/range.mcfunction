
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.walk+effect",font:"pc:intent"}]

data modify storage pc:temp intent set value {text:[{translate:"pc.intent.effect",font:"pc:intent"}]}
function pc:sys/grid/select/any

data modify storage pc:temp intent set value {is_walk:1b,text:[{translate:"pc.intent.walk",font:"pc:intent"}],facing:1b}
data modify storage pc:temp nearest set value {object:"ally"}
function pc:sys/grid/select/nearest