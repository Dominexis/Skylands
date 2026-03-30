
# effect
function pc:sys/object/walk/player

# fx
execute at @s run playsound minecraft:entity.goat.long_jump master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1
execute at @s run playsound minecraft:block.iron_trapdoor.open master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0