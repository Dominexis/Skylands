
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 0 force
particle minecraft:dust{color:[0.467,0.569,0.404],scale:1.0f} ~ ~1 ~ 0.5 0.1 0.5 0 10 force