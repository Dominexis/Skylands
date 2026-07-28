
tag @s add pc.entity.death
execute as @e[predicate=sys:entity/enemy,tag=!pc.entity.death] at @s run function effect:piglin_ts/2
tag @s remove pc.entity.death

# fx
playsound minecraft:entity.zombified_piglin.angry master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.fox.screech master @a ~ ~1024 ~ 0 0.75 1