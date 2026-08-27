
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:8,text:['damage','attack'],tags:['pc.intent.target']}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
execute at @n[predicate=pc:sys/entity/ally,sort=furthest,distance=..100,type=!minecraft:giant] run function pc:sys/grid/range/use

rotate @s facing entity @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]

data remove storage pc:temp intent.tags
data modify storage pc:temp intent.damage set value 0
data modify storage pc:temp range.type set value '3x3'
execute at @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/use