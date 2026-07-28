
data modify entity @s data.intent.self set value {text:['debuff','defense']}

data modify storage pc:temp intent set value {text:['defense'],tags:['pc.intent.buff']}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
function sys:grid/range/use

data modify storage pc:temp intent set value {text:['debuff'],tags:['pc.intent.debuff']}
data modify storage pc:temp range set value {type:"inf",mode:"intent"}
function sys:grid/range/use