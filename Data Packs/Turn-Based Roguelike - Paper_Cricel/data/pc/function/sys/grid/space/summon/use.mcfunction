
function pc:sys/grid/space/per
schedule function pc:sys/grid/space/summon/2 2t

# fx
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~1024 ~ 0 0.8 1