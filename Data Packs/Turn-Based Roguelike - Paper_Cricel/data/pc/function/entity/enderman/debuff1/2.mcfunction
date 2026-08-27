
execute as @e[predicate=pc:sys/entity/ally,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] if function pc:sys/grid/range/type/5x5 at @s run function pc:entity/enderman/debuff1/3
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.guardian.death master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:entity.fox.bite master @a ~ ~1024 ~ 0 0.5 1
playsound minecraft:entity.shulker.ambient master @a ~ ~1024 ~ 0 1.5 0.25
particle minecraft:ash ~ ~2 ~ 5 1 5 10 100 force