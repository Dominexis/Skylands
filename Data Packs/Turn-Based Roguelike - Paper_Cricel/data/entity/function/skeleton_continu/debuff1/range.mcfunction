
data modify entity @s data.intent.self set value {text:['walk','debuff']}

data modify storage pc:temp intent set value {text:['walk'],is_walk:1b,facing:1b}
data modify storage pc:temp range set value {type:"nearest",mode:"intent",nearest:{block:1,target:"ally"},avail:{hole:0b}}
function sys:grid/range/use

data modify storage pc:temp intent set value {text:['debuff']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"ally",sync:"@s"},line:{block:3,pierce:{unit:1b,grid:1b}}}

# if (occupied) :
execute at @e[tag=pc.intent.now,type=marker,limit=1] if function sys:grid/is_occupied at @s run return run function entity:skeleton_continu/debuff1/range_occupied

# else :
execute at @e[tag=pc.intent.now,type=marker,limit=1] run function sys:grid/range/use