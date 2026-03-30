
# effect
execute as @e[type=minecraft:end_crystal,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/mob] if data entity @s {data:{id:"end_crystal"}} at @s run function pc:object/end_crystal/on_death/real
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.undying_shell,predicate=pc:object/neutral] if data entity @s {data:{id:"end_crystal"}} at @s run function pc:object/end_crystal/on_death/real

# fx
playsound minecraft:entity.ender_dragon.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 1 1
particle minecraft:gust_emitter_large ~ ~ ~ 3 1 3 0 10 force
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.1 15 force