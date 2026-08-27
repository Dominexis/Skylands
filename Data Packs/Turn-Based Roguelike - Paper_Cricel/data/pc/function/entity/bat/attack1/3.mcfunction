
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally',}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle entity_effect{color:[0.702, 0.871, 0.761, 1.000]} ~ ~0.5 ~ 0.2 0.4 0.2 10 10 force
playsound minecraft:entity.puffer_fish.blow_out master @a ~ ~1024 ~ 0 0.75 0.5