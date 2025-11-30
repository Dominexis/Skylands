
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.walk",font:"pc:intent"}]

data modify storage pc:temp intent set value {is_walk:1b,text:[{translate:"pc.intent.walk",font:"pc:intent"}],facing:1b}
data modify storage pc:temp nearest set value {object:"mob"}
function pc:sys/grid/select/nearest