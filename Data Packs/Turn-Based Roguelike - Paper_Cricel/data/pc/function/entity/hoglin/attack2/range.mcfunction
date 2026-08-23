
data modify entity @s data.intent.self set value {text:['walk','attack']}

data modify storage pc:temp intent set value {damage:3,text:['damage','*2','attack','walk'],tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
execute at @n[predicate=pc:sys/entity/ally,distance=..100,type=!minecraft:giant] run function pc:sys/grid/range/use
execute facing entity @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {damage:3,text:['damage','*2','attack']}
data modify storage pc:temp range set value {type:'3x3',mode:'intent'}
execute at @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/use
execute at @e[tag=pc.intent.now,tag=pc.intent.walk,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if function pc:sys/grid/range/type/1x1d run data modify entity @s data.damage set value 1