
data modify entity @s data.intent.self set value {text:['attack','walk']}

data modify storage pc:temp intent set value {damage:3,text:['damage','attack','walk','debuff'],facing:1b,is_walk:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:3,target:"ally"},avail:{hole:0b}}
function sys:grid/range/use

tag @e[tag=pc.intent.now,type=marker,sort=furthest,limit=1] add pc.temp
kill @e[tag=pc.intent.now,tag=!pc.temp,type=marker,limit=2]
tag @e[tag=pc.temp,type=marker,limit=1] remove pc.temp

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:"3x3no0",mode:"intent"}
execute at @e[tag=pc.intent.now,type=marker,limit=1] run function sys:grid/range/use