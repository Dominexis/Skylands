
data modify entity @s data.intent.self set value {text:['attack','debuff']}

data modify storage pc:temp intent set value {damage:2,text:['damage','attack','debuff']}
data modify storage pc:temp range set value {type:"7x7",mode:"intent",facing:{target:"ally",sync:"@s"}}
function sys:grid/range/use
execute positioned ~-5.5 ~-100 ~-5.5 as @e[tag=pc.intent.now,type=marker,dx=10,dy=200,dz=10] run data modify entity @s data.damage set value 4