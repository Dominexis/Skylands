
execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,tag=!pc.grid.triggered,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:effect/flaming_touch/use

data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.1 30 force
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 10 force
particle minecraft:lava ~ ~ ~ 0 0 0 0 30 force