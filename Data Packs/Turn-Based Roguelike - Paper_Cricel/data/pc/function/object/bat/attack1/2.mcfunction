
function pc:sys/grid/select/ally

# heal
execute if entity @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] run function pc:object/bat/attack1/3

# damage
execute store result score #damage pc.main run data get entity @s data.damage
data modify storage pc:temp damage set value {}
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:block{block_state:{Name:"minecraft:redstone_block"}} ~ ~1 ~ 0.5 0.2 0.5 0 20 force