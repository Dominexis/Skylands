
tag @s add pc.entity.ender_dragon.debuff2

data modify entity @s teleport_duration set value 2
scoreboard players reset @s pc.animation

# fx
playsound minecraft:entity.ender_dragon.flap master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.warden.death master @a ~ ~1024 ~ 0 0.75 0.5
playsound minecraft:entity.warden.sonic_charge master @a ~ ~1024 ~ 0 1.1 1