
data modify storage pc:temp range set value {type:'0',mode:"victim",target:'any'}
function sys:grid/range/use

execute store result score #damage pc.main run data get storage pc:temp passive.current.value
execute if entity @e[predicate=sys:entity/victim,limit=1] run function effect:fire_area/hit

function sys:grid/range/clear
function sys:effect/descent

# fx
execute if score #var pc.main matches ..0 run function effect:fire_area/fx/clear
data modify storage pc:game grid.fire_area.round set value true