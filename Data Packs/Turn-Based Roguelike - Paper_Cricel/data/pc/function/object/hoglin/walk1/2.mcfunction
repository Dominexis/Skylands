
# effect
function pc:sys/grid/select/ally
execute unless entity @n[predicate=pc:object/victim,type=!player,distance=..16] run return fail

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
playsound pc:squeak master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75
playsound minecraft:entity.ravager.stunned master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
particle minecraft:cloud ~ ~ ~ 0.75 0 0.75 0.05 20 force