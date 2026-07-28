
data modify entity @s data.intent.self set value {text:['walk','attack']}

data modify storage pc:temp intent set value {damage:0,text:['damage','*2','attack','walk'],tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
execute at @n[predicate=sys:entity/ally,distance=..100] run function sys:grid/range/use
execute facing entity @e[tag=pc.intent.now,type=marker,limit=1] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {damage:2,text:['damage','*2','attack']}
data modify storage pc:temp range set value {type:'3x3',mode:'intent'}
execute at @e[tag=pc.intent.now,type=marker,limit=1] run function sys:grid/range/use