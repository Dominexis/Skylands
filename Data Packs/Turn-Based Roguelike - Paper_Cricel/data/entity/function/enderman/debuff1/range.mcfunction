
data modify entity @s data.intent.self set value {text:['walk','debuff']}

data modify storage pc:temp intent set value {text:['walk','debuff'],is_walk:1b,facing:1b,tags:['pc.intent.walk']}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:2,target:"player"},avail:{hole:0b}}
function sys:grid/range/use

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:"5x5",mode:"intent"}
function sys:grid/range/type/nearest/before_occupy

data modify storage pc:temp intent.avail.potential set value 1b
execute at @e[tag=pc.intent.walk,tag=pc.intent.now,type=marker,limit=2] run function sys:grid/range/use
data remove storage pc:temp intent.avail.potential