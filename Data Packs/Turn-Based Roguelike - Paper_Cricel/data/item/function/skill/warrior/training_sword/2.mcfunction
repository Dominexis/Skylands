
data modify storage pc:temp range set value {type:"0",target:"enemy",mode:"victim"}
function sys:grid/range/use

scoreboard players set #damage pc.main 4
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force