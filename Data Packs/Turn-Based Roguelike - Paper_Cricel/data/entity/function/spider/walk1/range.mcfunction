
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {damage:3,text:['damage','attack','walk'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:2,target:"ally"},avail:{hole:0b}}
function sys:grid/range/use