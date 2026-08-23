
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:sonic_boom ~ ~1 ~
particle item{item:"magenta_concrete_powder"} ~ ~1 ~ 0.1 0.1 0.1 0.3 30 force
particle minecraft:dragon_breath ~ ~1 ~ 0 0 0 0.1 30 force

playsound minecraft:item.trident.thunder master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:entity.vex.charge master @a ~ ~1024 ~ 0 1.5 0.5
playsound minecraft:entity.glow_squid.death master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.zombie.destroy_egg master @a ~ ~1024 ~ 0 0 1