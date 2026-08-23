
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:4,text:['damage','attack']}
data modify storage pc:temp range set value {type:"3x3",mode:"intent"}
execute at @e[predicate=pc:sys/entity/ally,sort=furthest,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/grid/range/use

execute facing entity @e[predicate=pc:sys/entity/ally,sort=furthest,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] feet run rotate @s ~ 0