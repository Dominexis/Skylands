
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {text:['walk'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:4,target:"ally"},avail:{hole:0b}}
function pc:sys/grid/range/use

kill @n[tag=pc.intent.now,sort=furthest,type=marker,distance=..20]
data modify storage pc:temp intent set value {damage:2,text:['damage','attack'],tags:['pc.intent.attack']}
data modify storage pc:temp range set value {type:"3x3no0",mode:"intent"}

# if (intent == exist) :
execute at @n[tag=pc.intent.now,sort=furthest,type=marker,distance=..20] run return run function pc:sys/grid/range/use

# else :
function pc:sys/grid/range/use
execute at @s positioned ^ ^ ^4 positioned ~-1.5 ~-100 ~-1.5 run data merge entity @e[tag=pc.intent.now,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] {data:{is_walk:1b,text:['damage','attack','walk']}}