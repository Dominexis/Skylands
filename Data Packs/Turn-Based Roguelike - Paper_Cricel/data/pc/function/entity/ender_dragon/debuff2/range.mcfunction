
data modify entity @s data.intent.self set value {text:['debuff',{translate:"pc:nouns.dragonbreath_area/mark",font:"pc:sys/nouns"}],extra:[{id:'dragonbreath_area/mark',category:"effect"}]}
execute facing entity @n[predicate=pc:sys/entity/player,limit=1,distance=..100,type=!minecraft:giant] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {text:['5','debuff',{translate:"pc:nouns.dragonbreath_area/mark",font:"pc:sys/nouns"}]}
data modify storage pc:temp range set value {type:"inf",mode:"intent"}
function pc:sys/grid/range/use