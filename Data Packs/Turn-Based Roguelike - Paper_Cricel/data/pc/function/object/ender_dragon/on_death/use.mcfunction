
# effect
execute as @e[predicate=pc:object/mob,type=end_crystal,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if data entity @s {data:{id:'end_crystal'}} at @s run function pc:object/end_crystal/on_death/real
execute as @e[predicate=pc:object/neutral,type=!player,tag=pc.fx.undying_shell,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if data entity @s {data:{id:'end_crystal'}} at @s run function pc:object/end_crystal/on_death/real

# fx
playsound minecraft:entity.ender_dragon.death master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1 1
particle minecraft:gust_emitter_large ~ ~ ~ 3 1 3 0 10 force
particle minecraft:poof ~ ~1 ~ 0.2 0.4 0.2 0.1 15 force