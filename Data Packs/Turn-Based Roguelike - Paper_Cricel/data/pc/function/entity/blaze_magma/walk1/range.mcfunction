
data modify entity @s data.intent.self set value {text:['walk','debuff']}

data modify storage pc:temp intent set value {text:['walk','debuff'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:2,target:"ally"},avail:{hole:0b}}
function pc:sys/grid/range/use