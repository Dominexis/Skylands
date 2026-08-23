
data modify storage pc:temp range set value {type:'3x3',mode:'victim',target:'enemy'}
function pc:sys/grid/range/use

scoreboard players set #skill.deterrence.count pc.main 0
execute as @e[predicate=pc:sys/entity/victim,distance=..30,type=!minecraft:giant] at @s run function pc:item/skill/warrior/deterrence/2b

scoreboard players set #damage pc.main 4
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

execute if score #skill.deterrence.count pc.main matches 1.. as @e[predicate=pc:sys/entity/player,tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/skill/warrior/deterrence/3