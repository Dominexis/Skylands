
tag @e[tag=pc.entity.ender_dragon.debuff1.target,limit=1] remove pc.entity.ender_dragon.debuff1.target
tag @n[predicate=sys:entity/ally,distance=..100] add pc.entity.ender_dragon.debuff1.target
data modify entity @s data.intent.self set value {text:['debuff']}
execute facing entity @e[tag=pc.entity.ender_dragon.debuff1.target,limit=1] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:"5x5",mode:"intent"}
execute at @e[tag=pc.entity.ender_dragon.debuff1.target,limit=1] run function sys:grid/range/use