
# effect
execute as @e[type=marker,tag=pc.grid.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/blazing_strike/2
execute as @e[type=marker,tag=pc.grid,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if data entity @s data.effect.fire_area at @s run function pc:item/skill/blazing_strike/3

# fx
playsound minecraft:entity.blaze.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.85
playsound minecraft:entity.blaze.shoot master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
particle minecraft:lava ~ ~ ~ 0.2 0 0.2 1 20 force