
# effect
function pc:sys/object/walk/player

# fx
particle minecraft:portal ~ ~ ~ 0 0 0 1 100 force
execute at @s run particle minecraft:portal ~ ~ ~ 0 0 0 1 100 force
execute at @s run playsound minecraft:entity.ender_pearl.throw master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:item.chorus_fruit.teleport master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1