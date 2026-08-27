# As/At : mage (enemy)
##

scoreboard players set @s synb.Enemy.GenericCD 220
summon minecraft:item_display ~ ~ ~ {Tags:["synb.type.enemy_associate","synb.attr.mage_orbit"],item:{id:"minecraft:wither_skeleton_skull"},billboard:"vertical",transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]}}
playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~0.5 ~ 2 0.8
particle minecraft:large_smoke ~ ~0.5 ~ 0.2 1 0.2 0.1 13