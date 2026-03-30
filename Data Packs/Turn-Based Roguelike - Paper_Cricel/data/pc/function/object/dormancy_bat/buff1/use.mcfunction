
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s run function pc:object/dormancy_bat/buff1/2

data modify entity @s data.brain.buff1 set value 3

# fx
function pc:object/dormancy_bat/buff1/fx/use
playsound minecraft:item.goat_horn.sound.1 master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.5 0.75
playsound minecraft:entity.vex.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2