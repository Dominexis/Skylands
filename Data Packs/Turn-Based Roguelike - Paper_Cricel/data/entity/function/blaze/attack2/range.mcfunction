
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:8,text:['damage','attack'],tags:['pc.intent.target']}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
execute at @n[predicate=sys:entity/ally,sort=furthest,distance=..100] run function sys:grid/range/use

rotate @s facing entity @e[tag=pc.intent.now,type=marker,limit=1]

data remove storage pc:temp intent.tags
data modify storage pc:temp intent.damage set value 0
data modify storage pc:temp range.type set value '3x3'
execute at @e[tag=pc.intent.now,type=marker,limit=1] run function sys:grid/range/use