
# effect
summon marker ~ ~1 ~ {Tags:[pc.fx.rusty_silverfish.dust,pc.fx]}
rotate @n[type=marker,tag=pc.fx.rusty_silverfish.dust,distance=..100] ~ ~

# fx
playsound minecraft:block.grindstone.use master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
playsound minecraft:entity.spider.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:block.wool.place master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0