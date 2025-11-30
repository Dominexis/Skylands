
# effect
scoreboard players operation #damage pc.main = #var pc.main
scoreboard players add #damage pc.main 40
function pc:sys/object/damage/victim

# fx
particle minecraft:electric_spark ~ ~ ~ 0.4 0.4 0.4 0 30 force
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:block.beehive.shear master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:block.beehive.shear master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2