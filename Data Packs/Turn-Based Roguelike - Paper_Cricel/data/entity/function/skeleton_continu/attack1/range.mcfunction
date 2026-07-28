
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {damage:2,text:['walk'],is_walk:1b,facing:1b,tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:1,target:"ally"},avail:{hole:0b}}
function sys:grid/range/use

data modify storage pc:temp intent set value {damage:2,text:['damage','*3','attack'],tags:['pc.intent.attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",line:{block:2},facing:{target:"ally"}}

# if (occupied) :
execute at @e[tag=pc.intent.now,type=marker,limit=1] if function sys:grid/is_occupied at @s run return run function entity:skeleton_continu/attack1/range_occupied

# else :
execute at @e[tag=pc.intent.now,type=marker,limit=1] run return run function sys:grid/range/use