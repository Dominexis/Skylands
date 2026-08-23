
data modify storage pc:temp range set value {type:"line",mode:"victim",target:"enemy",line:{block:3,pierce:{unit:1b,grid:1b}}}
function pc:sys/grid/range/use

execute as @e[predicate=pc:sys/entity/victim,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/skill/warrior/taunt/2b

# fx
execute positioned ~ ~1 ~ run function pc:item/skill/warrior/taunt/fx/use