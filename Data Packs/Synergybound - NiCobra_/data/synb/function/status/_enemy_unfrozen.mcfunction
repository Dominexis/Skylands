# As/At : enemy
##

data modify entity @s AngryAt set from entity @p[team=sl.player,tag=synb.attr.player_in_arena,distance=..40,nbt=!{active_effects:[{id:"minecraft:invisibility"}]}] UUID

execute unless data entity @s equipment.head.components.minecraft:custom_data.prev_id run \
    data remove entity @s equipment.head
data modify entity @s equipment.head.id set from entity @s equipment.head.components.minecraft:custom_data.prev_id
execute unless data entity @s equipment.mainhand.components.minecraft:custom_data.prev_id run \
    data remove entity @s equipment.mainhand
data modify entity @s equipment.mainhand.id set from entity @s equipment.mainhand.components.minecraft:custom_data.prev_id
execute unless data entity @s equipment.offhand.components.minecraft:custom_data.prev_id run \
    data remove entity @s equipment.offhand
data modify entity @s equipment.offhand.id set from entity @s equipment.offhand.components.minecraft:custom_data.prev_id

playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.6 1.5
particle block{block_state:{Name:packed_ice}} ~ ~0.5 ~ 0 1 0 1 20

attribute @s minecraft:movement_speed modifier remove synb.m:status.frozen
attribute @s minecraft:attack_damage modifier remove synb.m:status.frozen
attribute @s minecraft:attack_speed modifier remove synb.m:status.frozen