
data modify entity @s data.intent.self set value {text:['summon','walk']}

tag @e[tag=pc.grid.in_range,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.grid.in_range
data modify storage pc:temp range set value {type:"any-cross",mode:"in_range",target:"space",avail:{hole:0b}}
execute at @e[predicate=pc:sys/entity/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/grid/range/use

data modify storage pc:temp intent set value {text:['walk'],is_walk:1b,facing:1b}
data modify storage pc:temp range set value {type:"0",mode:"intent"}
execute at @e[predicate=pc:sys/entity/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @n[tag=pc.grid.in_range,type=marker,sort=furthest,distance=..100] run function pc:sys/grid/range/use

data modify storage pc:temp intent set value {text:['summon'],tags:['pc.intent.summon']}
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"player",sync:"@s"},line:{block:9,pierce:{unit:1b,grid:1b}}}
execute at @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/range/use


data modify storage pc:temp intent.avail.potential set value 1b
data modify storage pc:temp range set value {type:"line",mode:"intent",facing:{target:"player"},line:{block:9,pierce:{unit:1b,grid:1b}}}
function pc:sys/grid/range/use
data remove storage pc:temp intent.avail.potential