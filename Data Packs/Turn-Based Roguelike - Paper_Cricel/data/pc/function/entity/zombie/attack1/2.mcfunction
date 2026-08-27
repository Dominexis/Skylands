
data modify storage pc:temp range set value {type:"0",target:"ally",mode:"victim"}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force