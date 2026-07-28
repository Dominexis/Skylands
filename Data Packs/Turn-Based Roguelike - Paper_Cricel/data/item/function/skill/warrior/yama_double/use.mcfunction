
execute as @e[predicate=sys:entity/enemy] run function item:skill/warrior/yama_double/fx/use

# fx
playsound minecraft:entity.ravager.death master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:block.bell.use master @a ~ ~1024 ~ 0 0.9 0.75
playsound minecraft:entity.firework_rocket.launch master @a ~ ~1024 ~ 0 0.75 0.75