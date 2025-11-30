# exe : object

# effect
data modify storage pc:temp passive.math append value {var:"#damage",value:1.25}

# fx
execute if data storage pc:temp damage.display run return fail
particle minecraft:soul ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound minecraft:entity.iron_golem.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:entity.breeze.deflect master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2