
data modify storage pc:temp range set value {type:"0",target:"enemy",mode:"victim"}
function pc:sys/grid/range/use

scoreboard players set #damage pc.main 4
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force