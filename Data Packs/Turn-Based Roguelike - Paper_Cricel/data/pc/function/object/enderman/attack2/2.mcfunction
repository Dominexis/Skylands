
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
data modify storage pc:temp damage set value {}
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:squid_ink ~ ~1 ~ 0 0 0 0.1 20 force