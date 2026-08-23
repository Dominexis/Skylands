
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {text:['walk'],is_walk:1b,facing:1b,tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:1,target:"ally"},avail:{hole:0b}}
function pc:sys/grid/range/use

data modify storage pc:temp intent set value {damage:5,text:['damage','attack'],tags:['pc.intent.attack']}
data modify storage pc:temp range set value {type:"any-cross",mode:"intent"}

# if (occupied) :
execute at @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if function pc:sys/grid/is_occupied run return run function pc:entity/enderman/attack1/range_occupied

# else :
execute at @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/use