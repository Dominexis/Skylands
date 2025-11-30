
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.walk",font:"pc:intent"}]

data modify storage pc:temp intent set value {is_walk:true,text:[{"translate":"pc.intent.walk",font:"pc:intent"}],facing:true}
data modify storage pc:temp nearest set value {object:ally,block:1}
function pc:sys/grid/select/nearest