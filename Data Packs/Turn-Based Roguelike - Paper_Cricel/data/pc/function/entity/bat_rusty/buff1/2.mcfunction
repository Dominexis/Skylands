
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function pc:sys/grid/range/use

data modify storage pc:temp effect set value {id:'strength',value:1}
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/effect/apply

scoreboard players set #damage pc.main 16
data modify storage pc:temp damage set value {mode:"heal"}
function pc:sys/entity/dmg/atker