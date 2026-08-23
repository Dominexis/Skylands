
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function pc:sys/grid/range/use

scoreboard players set #damage pc.main 6
data modify storage pc:temp damage set value {mode:"heal"}
function pc:sys/entity/dmg/atker

data modify storage pc:temp effect set value {id:"critical_hit",value:1}
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/effect/apply

function pc:sys/grid/range/clear

# fx
function pc:entity/piglin_heal/buff2/fx/use
particle witch ~ ~0.25 ~ 0.5 0.1 0.5 10 30 force
particle minecraft:trial_spawner_detection_ominous ~ ~1 ~ 0.5 0.6 0.5 0 10 force