
data modify entity @s data.intent.self set value {text:['debuff',{translate:"pc:nouns.dragonbreath_area/mark",font:"sys:nouns"}],extra:[{id:'dragonbreath_area/mark',category:"effect"}]}
execute facing entity @n[predicate=sys:entity/player,limit=1,distance=..100] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {text:['5','debuff',{translate:"pc:nouns.dragonbreath_area/mark",font:"sys:nouns"}]}
data modify storage pc:temp range set value {type:"inf",mode:"intent"}
function sys:grid/range/use