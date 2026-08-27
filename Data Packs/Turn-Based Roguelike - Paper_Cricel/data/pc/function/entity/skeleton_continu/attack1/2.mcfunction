
data modify storage pc:temp range set value {type:"0",target:"ally",mode:"victim"}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:crit ~ ~0.25 ~ 0 0 0 1 10 force
playsound minecraft:entity.arrow.hit_player master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.arrow.hit master @a ~ ~1024 ~ 0 1.5 1