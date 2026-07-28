
summon marker ~ ~ ~ {Tags:[pc.fx,pc.entity.enderman.attack3]}

# fx
particle minecraft:portal ~ ~1.5 ~ 0.3 1 0.3 20 5000 force
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~1024 ~ 0 1 0.5
execute as @a at @s run playsound minecraft:entity.enderman.scream master @s ~ ~1024 ~ 0 0 0.5
execute as @a at @s run playsound minecraft:entity.warden.sonic_charge master @s ~ ~1024 ~ 0 0.6 1