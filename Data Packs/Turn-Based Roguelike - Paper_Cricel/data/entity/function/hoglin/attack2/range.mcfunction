
data modify entity @s data.intent.self set value {text:['walk','attack']}

data modify storage pc:temp intent set value {damage:3,text:['damage','*2','attack','walk'],tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
execute at @n[predicate=sys:entity/ally,distance=..100] run function sys:grid/range/use
execute facing entity @e[tag=pc.intent.now,type=marker,limit=1] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {damage:3,text:['damage','*2','attack']}
data modify storage pc:temp range set value {type:'3x3',mode:'intent'}
execute at @e[tag=pc.intent.now,type=marker,limit=1] run function sys:grid/range/use
execute at @e[tag=pc.intent.now,tag=pc.intent.walk,type=marker,limit=1] as @e[tag=pc.intent.now,type=marker] if function sys:grid/range/type/1x1d run data modify entity @s data.damage set value 1