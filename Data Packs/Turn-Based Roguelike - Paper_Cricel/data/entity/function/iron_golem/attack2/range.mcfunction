
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:4,text:['damage','attack']}
data modify storage pc:temp range set value {type:"3x3",mode:"intent"}
execute at @e[predicate=sys:entity/ally,sort=furthest,limit=1] run function sys:grid/range/use

execute facing entity @e[predicate=sys:entity/ally,sort=furthest,limit=1] feet run rotate @s ~ 0