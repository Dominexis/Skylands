
data modify entity @s data.intent.self set value {text:['attack','debuff']}

data modify storage pc:temp intent set value {damage:6,text:['damage','attack','debuff']}
data modify storage pc:temp range set value {type:'line',mode:'intent',facing:{target:"ally",sync:"@s"},line:{block:2,pierce:{unit:1b,grid:1b}}}
function sys:grid/range/use

data modify storage pc:temp intent.damage set value 3
data remove storage pc:temp range.facing
execute rotated as @s positioned ^4 ^ ^ run function sys:grid/range/use
execute rotated as @s positioned ^-4 ^ ^ run function sys:grid/range/use