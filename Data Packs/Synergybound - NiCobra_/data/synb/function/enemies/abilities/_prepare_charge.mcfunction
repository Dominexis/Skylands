# As/At : runner (enemy)
##

summon minecraft:item_display ~ ~ ~ {Tags:["synb.type.enemy_associate","synb.attr.runner_orbit"],item:{id:"minecraft:feather"},billboard:"vertical",transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~0.5 ~ 2 1.2
particle minecraft:crimson_spore ~ ~0.5 ~ 0 0 0 1 100
effect give @s minecraft:slowness 2 3 true