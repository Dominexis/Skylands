
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:4,text:['damage','attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"ally",sync:"@s"},line:{block:3,pierce:{unit:1b,grid:1b}}}
function pc:sys/grid/range/use

data modify storage pc:temp intent set value {damage:3,text:['damage','attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",line:{block:2,pierce:{unit:1b,grid:1b}}}
execute rotated as @s positioned ^4 ^ ^ run function pc:sys/grid/range/use
execute rotated as @s positioned ^-4 ^ ^ run function pc:sys/grid/range/use