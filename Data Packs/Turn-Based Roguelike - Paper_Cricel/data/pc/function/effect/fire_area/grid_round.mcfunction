
data modify storage pc:temp range set value {type:'0',mode:"victim",target:'any'}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get storage pc:temp passive.current.value
execute if entity @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:effect/fire_area/hit

function pc:sys/grid/range/clear
function pc:sys/effect/descent

# fx
execute if score #var pc.main matches ..0 run function pc:effect/fire_area/fx/clear
data modify storage pc:game grid.fire_area.round set value true