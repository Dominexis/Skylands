
data modify storage pc:temp range set value {type:'3x3',mode:'victim',target:'enemy'}
function pc:sys/grid/range/use

scoreboard players set #damage pc.main 18
function pc:sys/entity/dmg/atker

execute positioned ~-5.5 ~-100 ~-5.5 as @e[tag=pc.grid,type=minecraft:marker,dx=10,dy=200,dz=10] at @s run function pc:item/skill/warrior/blazing_meteorite/2b