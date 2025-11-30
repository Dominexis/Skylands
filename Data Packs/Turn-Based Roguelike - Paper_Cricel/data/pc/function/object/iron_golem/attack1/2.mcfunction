
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle minecraft:flash{color:[1,1,1,1]} ~ ~1 ~
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force