
# effect
data modify entity @s data.intent.self set value [{translate:"pc.intent.attack",font:"pc:intent"}]
execute facing entity @n[type=!minecraft:player,distance=..100,predicate=pc:object/ally] eyes run function pc:sys/object/rotate/proofread90

data modify storage pc:temp intent set value {damage:50,text:["x","y",{translate:"pc.intent.attack",font:"pc:intent"}]}
data modify storage pc:temp intent.text[1] set string entity @s data.silverfish_count
data modify storage pc:temp line set value {block:2,mode:"any"}
execute at @s run function pc:sys/grid/select/line

data modify storage pc:temp intent set value {damage:10,text:["x","y",{translate:"pc.intent.attack",font:"pc:intent"}]}
data modify storage pc:temp intent.text[1] set string entity @s data.silverfish_count
execute at @s run function pc:sys/grid/select/any3x3