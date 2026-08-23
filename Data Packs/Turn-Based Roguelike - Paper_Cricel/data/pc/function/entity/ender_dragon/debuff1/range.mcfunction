
tag @e[tag=pc.entity.ender_dragon.debuff1.target,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.entity.ender_dragon.debuff1.target
tag @n[predicate=pc:sys/entity/ally,distance=..100,type=!minecraft:giant] add pc.entity.ender_dragon.debuff1.target
data modify entity @s data.intent.self set value {text:['debuff']}
execute facing entity @e[tag=pc.entity.ender_dragon.debuff1.target,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] feet run rotate @s ~ 0

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:"5x5",mode:"intent"}
execute at @e[tag=pc.entity.ender_dragon.debuff1.target,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/grid/range/use