
tag @s add pc.entity.death
execute as @e[predicate=pc:sys/entity/enemy,tag=!pc.entity.death,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:effect/piglin_ts/2
tag @s remove pc.entity.death

# fx
playsound minecraft:entity.zombified_piglin.angry master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.fox.screech master @a ~ ~1024 ~ 0 0.75 1