
data modify entity @s data.intent.self set value {text:['attack']}

data modify storage pc:temp intent set value {damage:2,text:['damage','*2','attack']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"ally",sync:"@s"},line:{block:7,pierce:{unit:1b}}}
function pc:sys/grid/range/use
data remove storage pc:temp range.facing.sync
data modify storage pc:temp range.facing.pos set value "^4 ^ ^"
function pc:sys/grid/range/use
data modify storage pc:temp range.facing.pos set value "^-4 ^ ^"
function pc:sys/grid/range/use