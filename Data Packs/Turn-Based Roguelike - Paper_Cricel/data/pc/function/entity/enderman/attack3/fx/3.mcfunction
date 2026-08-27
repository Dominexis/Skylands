
execute if score @s pc.duration matches 51 run function pc:entity/enderman/attack3/fx/3b

# fx
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 10 0 10 0 30 force
particle minecraft:sonic_boom ~ ~1 ~ 10 0.5 10 0 10 force

execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~1024 ~ 0 0.75 0.5