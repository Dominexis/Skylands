
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.walk",font:"pc:intent"}]

data modify storage pc:temp intent set value {is_walk:true,text:[{"translate":"pc.intent.walk",font:"pc:intent"}],avail:{hole:true},facing:true}
data modify storage pc:temp nearest set value {block:2,object:ally,can_diagonal:true,unhindered:true}
function pc:sys/grid/select/nearest