
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now] at @s run function pc:item/skill/blazing_strike/2
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] if data entity @s data.effect.fire_area at @s run function pc:item/skill/blazing_strike/3

# fx
playsound minecraft:entity.blaze.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.85
playsound minecraft:entity.blaze.shoot master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player]
particle minecraft:lava ~ ~ ~ 0.2 0 0.2 1 20 force