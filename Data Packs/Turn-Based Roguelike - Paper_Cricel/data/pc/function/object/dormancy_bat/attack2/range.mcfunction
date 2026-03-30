
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:20,text:[{text:"x3"},{translate:"pc.intent.attack",font:"pc:intent"}]}
function pc:sys/grid/select/any3x3