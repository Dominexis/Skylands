
# if (already had infocheck) :
execute as 20060423-0-0-1-0 at @s run return run function pc:sys/effect/checker/update/use

# else :
execute as @a[predicate=pc:sys/entity/inturn,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s anchored eyes positioned ^ ^ ^ run function pc:sys/effect/checker/summon