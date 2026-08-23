
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:entity/ender_dragon/crystal/debuff1/2b

function pc:sys/grid/range/clear

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @e[tag=pc.atker,type=end_crystal,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run function pc:entity/ender_dragon/crystal/debuff1/beam
particle entity_effect{color:[0.353, 0.271, 0.404, 1.000]} ~ ~0.25 ~ 0.6 0.3 0.6 0.1 20 force