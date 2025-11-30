
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack+walk",font:"pc:intent"}]

data modify storage pc:temp intent set value {is_walk:1b,damage:30,text:[{translate:"pc.intent.attack+walk",font:"pc:intent"}],facing:1b}
data modify storage pc:temp nearest set value {object:"ally"}
function pc:sys/grid/select/nearest