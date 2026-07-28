
tag @s add pc.entity.ender_dragon.debuff1

data modify entity @s teleport_duration set value 2
scoreboard players reset @s pc.animation

# fx
playsound minecraft:entity.ender_dragon.flap master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.breeze.jump master @a ~ ~1024 ~ 0 0 0.5