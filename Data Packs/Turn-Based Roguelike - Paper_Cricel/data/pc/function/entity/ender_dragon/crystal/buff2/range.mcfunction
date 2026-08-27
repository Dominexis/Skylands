
data modify entity @s data.intent.self set value {text:['heal']}

data modify storage pc:temp intent set value {text:['heal']}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
execute at @e[tag=pc.entity.ender_dragon,type=bee,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/use