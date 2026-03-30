
# effect
execute as @e[type=minecraft:zombified_piglin,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/mob,nbt={data:{id:"nether_pigman"}}] at @s run function pc:object/nether_pigman/on_death/2

# fx
playsound minecraft:entity.zombified_piglin.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1
playsound minecraft:entity.zombified_piglin.angry master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.1 15 force