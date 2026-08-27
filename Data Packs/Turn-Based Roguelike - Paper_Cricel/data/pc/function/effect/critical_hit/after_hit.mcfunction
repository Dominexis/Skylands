
execute if data storage pc:temp damage{lose_hp:1b} run return fail

# fx
execute as @e[predicate=pc:sys/entity/victim,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s anchored eyes run function pc:effect/critical_hit/fx