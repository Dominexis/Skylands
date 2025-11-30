
# effect

# fx
playsound minecraft:block.amethyst_block.break master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0
playsound minecraft:entity.wither.shoot master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.2 1.5
particle minecraft:entity_effect{color:[0.647,0.345,0.78,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 50 force
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.1 15 force