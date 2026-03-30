
# effect
function pc:sys/object/walk/object

scoreboard players set #value pc.main 200
function pc:passive/shield/use

# fx
playsound minecraft:entity.goat.long_jump master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1