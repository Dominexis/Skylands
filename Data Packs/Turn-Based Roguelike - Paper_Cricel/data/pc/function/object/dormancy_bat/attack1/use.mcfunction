
# effect
execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/dormancy_bat/attack1/2

# fx
function pc:object/dormancy_bat/attack1/fx/use
playsound minecraft:block.beacon.power_select master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:entity.bat.ambient master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 0 0.25