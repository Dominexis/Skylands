
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread45

data modify storage pc:temp intent set value {damage:70,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
data modify storage pc:temp line set value {block:1,mode:"any",unhindered:1b}
execute at @s run function pc:sys/grid/select/line

data modify storage pc:temp intent set value {damage:50,text:[{translate:"pc.intent.attack",font:"pc:intent"}]}
data modify storage pc:temp line set value {block:2,mode:"any",unhindered:1b}
execute at @s run function pc:sys/grid/select/line