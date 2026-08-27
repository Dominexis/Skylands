
data modify storage pc:temp range set value {type:"0",target:"ally",mode:"victim"}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
playsound minecraft:block.vine.hit master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.vine.hit master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.player.hurt_freeze master @a ~ ~1024 ~ 0 0 0.5
particle minecraft:sneeze ~ ~0.25 ~ 0.1 0.1 0.1 0.1 30 force