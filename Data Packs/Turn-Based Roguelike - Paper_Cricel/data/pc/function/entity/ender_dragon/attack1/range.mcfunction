
data modify entity @s data.intent.self set value {text:['attack','debuff']}

data modify storage pc:temp intent set value {damage:4,text:['damage','attack','debuff'],tags:['pc.intent.attack2']}
data modify storage pc:temp range set value {type:"line",mode:"intent",line:{block:9,pierce:{unit:1b,grid:1b}},facing:{target:"ally",sync:"@s"}}
function pc:sys/grid/range/use

data remove storage pc:temp range.facing
execute rotated as @s positioned ^4 ^ ^ run function pc:sys/grid/range/use
execute rotated as @s positioned ^-4 ^ ^ run function pc:sys/grid/range/use
execute rotated as @s positioned ^ ^ ^4 positioned ~-5.5 ~-100 ~-5.5 as @e[tag=pc.intent.now,type=marker,dx=10,dy=200,dz=10,limit=6] run function pc:entity/ender_dragon/attack1/range_repeat

data modify storage pc:temp intent set value {damage:3,text:['damage','attack'],tags:['pc.intent.attack1']}
data modify storage pc:temp range.line.block set value 2
execute rotated as @s positioned ^8 ^ ^ run function pc:sys/grid/range/use
execute rotated as @s positioned ^-8 ^ ^ run function pc:sys/grid/range/use