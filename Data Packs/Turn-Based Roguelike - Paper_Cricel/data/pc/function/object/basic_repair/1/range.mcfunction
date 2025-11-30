
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.repair",font:"pc:intent"}]

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.repair",font:"pc:intent"}]}
function pc:sys/grid/select/any