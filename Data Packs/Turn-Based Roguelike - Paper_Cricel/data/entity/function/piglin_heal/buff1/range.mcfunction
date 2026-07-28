
data modify entity @s data.intent.self set value {text:['heal','defense']}

data modify storage pc:temp intent set value {text:['heal','defense']}
data modify storage pc:temp range set value {type:"0",mode:"intent",facing:{target:"enemy"}}
execute as @e[predicate=sys:entity/enemy] at @s run function sys:grid/range/use