
# effect
summon minecraft:marker ~ ~1 ~ {Tags:["pc.fx.rusty_silverfish.dust","pc.fx"]}
rotate @n[type=minecraft:marker,distance=..100,tag=pc.fx.rusty_silverfish.dust] ~ ~

# fx
playsound minecraft:block.grindstone.use master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0
playsound minecraft:entity.spider.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2
playsound minecraft:block.wool.place master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0