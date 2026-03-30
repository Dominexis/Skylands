
# effect
function pc:sys/player/select/space/per
schedule function pc:sys/player/select/space/summon/2 2t

# fx
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] at @s run playsound minecraft:entity.puffer_fish.blow_up master @s ~ ~ ~ 1 0.8