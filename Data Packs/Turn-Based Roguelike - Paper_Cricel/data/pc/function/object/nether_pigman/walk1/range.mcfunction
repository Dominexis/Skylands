
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.attack+walk",font:"pc:intent"}]

data modify storage pc:temp intent set value {is_walk:true,text:[{"translate":"pc.intent.walk",font:"pc:intent"}],facing:true}
data modify storage pc:temp nearest set value {object:ally}
function pc:sys/grid/select/nearest

data modify storage pc:temp intent set value {damage:40,text:[{"translate":"pc.intent.attack",font:"pc:intent"}],id:"attack"}
execute at @s positioned ^ ^ ^4 run function pc:sys/grid/select/any1x1