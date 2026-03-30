
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack+effect",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:30,text:["x2",{translate:"pc.intent.attack+effect",font:"pc:intent"}]}
data modify storage pc:temp line set value {block:1,mode:"any"}
execute at @s run function pc:sys/grid/select/line