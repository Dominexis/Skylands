
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

data modify storage pc:temp effect set value {id:'weakness',value:1}
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/effect/apply

function pc:sys/grid/range/clear

# fx
particle dust{color:[0.510, 0.855, 0.424],scale:1.5f} ~ ~0.25 ~ 0.4 0.1 0.4 0 15 force
particle minecraft:totem_of_undying ~ ~0.25 ~ 0 0 0 0.5 30 force