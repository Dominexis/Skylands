
function sys:entity/infobar/update

# fx
execute unless score #damage pc.main matches 0 run function sys:fx/show_dmg/use
execute anchored eyes run particle minecraft:heart ^ ^ ^ 0 0 0 0 0 force
particle entity_effect{color:[0.576,1.000,0.510,1.00]} ~ ~1 ~ 0.3 0.5 0.3 0 20 force