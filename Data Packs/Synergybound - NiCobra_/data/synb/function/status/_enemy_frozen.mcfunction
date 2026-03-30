# As/At : enemy
##

data modify entity @s equipment.head.components.minecraft:custom_data.prev_id set from entity @s equipment.head.id
data modify entity @s equipment.head.id set value "minecraft:packed_ice"
data modify entity @s equipment.mainhand.components.minecraft:custom_data.prev_id set from entity @s equipment.mainhand.id
data modify entity @s equipment.mainhand.id set value "minecraft:packed_ice"
data modify entity @s equipment.offhand.components.minecraft:custom_data.prev_id set from entity @s equipment.offhand.id
data modify entity @s equipment.offhand.id set value "minecraft:packed_ice"

playsound minecraft:block.snow.break hostile @a ~ ~ ~ 1 0.5
particle minecraft:snowflake ~ ~ ~ 0.2 0.9 0.2 0.15 50

attribute @s minecraft:movement_speed modifier add synb.m:status.frozen -1.0 add_multiplied_total
attribute @s minecraft:attack_damage modifier add synb.m:status.frozen -1.0 add_multiplied_total
attribute @s minecraft:attack_speed modifier add synb.m:status.frozen -1.0 add_multiplied_total

execute if entity @s[type=minecraft:zoglin] run summon minecraft:block_display ~0.8 ~ ~0.8 {Tags:["synb.type.ice_cube","synb.attr.big"],block_state:{Name:"minecraft:ice"},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]}}
execute if entity @s[type=minecraft:slime] run summon minecraft:block_display ~0.55 ~ ~0.55 {Tags:["synb.type.ice_cube","synb.attr.big"],block_state:{Name:"minecraft:ice"},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]}}
execute if entity @s[type=minecraft:endermite] run summon minecraft:block_display ~0.25 ~ ~0.25 {Tags:["synb.type.ice_cube","synb.attr.small"],block_state:{Name:"minecraft:ice"},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
execute if entity @s[type=minecraft:silverfish] run summon minecraft:block_display ~0.25 ~ ~0.25 {Tags:["synb.type.ice_cube","synb.attr.small"],block_state:{Name:"minecraft:ice"},transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}