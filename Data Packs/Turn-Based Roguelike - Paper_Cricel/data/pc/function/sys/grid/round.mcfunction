
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] at @s run function pc:sys/grid/state/reset_occupy
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] at @s run function pc:sys/grid/passive {type:"round"}

# fx
execute if data storage pc:game grid.fire_area.round run playsound minecraft:entity.generic.burn master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.5 1 0.5
execute if data storage pc:game grid.fire_area.hit run playsound minecraft:entity.player.hurt_on_fire master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.25 0 0.25

data remove storage pc:game grid