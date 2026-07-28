
data modify entity @s data.intent.self set value {text:['debuff']}
execute facing entity @n[predicate=sys:entity/ally,distance=..100] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:'anyd-crossor0',mode:'intent'}
execute at @n[predicate=sys:entity/ally,distance=..100] run function sys:grid/range/use