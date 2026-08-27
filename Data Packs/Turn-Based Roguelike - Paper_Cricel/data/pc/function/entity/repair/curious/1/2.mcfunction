
scoreboard players set #value pc.main 3
function pc:sys/entity/repair/complete

data modify storage pc:temp range set value {type:'1x1',mode:'victim',target:'enemy'}
execute if function pc:sys/grid/range/use as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:entity/repair/curious/1/2b

tag @s add pc.entity.repair.curious.fully_repaired
function pc:sys/utils/passive/use {passive:on_death}