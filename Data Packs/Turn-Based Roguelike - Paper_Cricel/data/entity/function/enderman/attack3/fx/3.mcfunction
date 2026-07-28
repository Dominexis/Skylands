
execute if score @s pc.duration matches 51 run function entity:enderman/attack3/fx/3b

# fx
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 10 0 10 0 30 force
particle minecraft:sonic_boom ~ ~1 ~ 10 0.5 10 0 10 force

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~1024 ~ 0 0.75 0.5