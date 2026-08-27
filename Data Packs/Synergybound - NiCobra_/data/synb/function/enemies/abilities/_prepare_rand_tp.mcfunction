# As/At : evader (enemy)
##

summon minecraft:item_display ~ ~ ~ {Tags:["synb.type.enemy_associate","synb.attr.evader_orbit"],item:{id:"minecraft:ender_pearl"},billboard:"vertical",transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~0.5 ~ 1 1.2
particle minecraft:warped_spore ~ ~0.5 ~ 0 0 0 1 50