
# effect
function pc:sys/grid/select/mob

scoreboard players set #damage pc.main 40
execute if score #db pc.main matches 1.. run data modify storage pc:temp passive.math append value {var:"#damage",value:2}
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
particle sweep_attack ~ ~1 ~ 0 0 0 0 0 force
execute if score #db pc.main matches 1.. run playsound minecraft:entity.parrot.hurt master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0