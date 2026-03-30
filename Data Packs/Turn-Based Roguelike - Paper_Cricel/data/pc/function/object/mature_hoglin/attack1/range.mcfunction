
# effect
data modify entity @s data.intent.self set value [{"translate":"pc.intent.attack+effect",font:"pc:intent"}]
execute facing entity @n[predicate=pc:object/ally,type=!player,distance=..100] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {text:[{"translate":"pc.intent.effect",font:"pc:intent"}]}
function pc:sys/grid/select/any

data modify storage pc:temp intent set value {damage:20,text:["x3",{"translate":"pc.intent.attack",font:"pc:intent"}],id:"attack"}
data modify storage pc:temp line set value {block:1,mode:any}
execute at @s run function pc:sys/grid/select/line