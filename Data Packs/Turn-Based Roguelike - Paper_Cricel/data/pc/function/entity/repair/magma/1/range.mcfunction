
data modify entity @s data.intent.self set value {text:['repair']}

data modify storage pc:temp intent set value {text:['repair_round','repair']}
data modify storage pc:temp range set value {type:'0',mode:'intent'}
function pc:sys/grid/range/use