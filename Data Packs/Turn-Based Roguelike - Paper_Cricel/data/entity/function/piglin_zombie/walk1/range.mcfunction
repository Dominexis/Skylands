
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {damage:2,text:['walk'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:1,target:"ally"},avail:{hole:0b}}
function sys:grid/range/use

data modify storage pc:temp intent set value {damage:4,text:['damage','attack']}
data modify storage pc:temp range set value {type:'1x1',mode:'intent'}

# if (occupied == false) :
execute at @e[tag=pc.intent.now,type=marker,limit=1] unless function sys:grid/is_occupied run return run function sys:grid/range/use

# else :
data merge entity @e[tag=pc.intent.now,type=marker,limit=1] {data:{text:['damage','attack','walk']}}
function sys:grid/range/use