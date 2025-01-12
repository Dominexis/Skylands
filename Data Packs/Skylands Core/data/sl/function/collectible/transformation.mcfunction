# Compute position and rotation
scoreboard players set #ascent_time sl.value 60
scoreboard players set #ascent_range sl.value 1000
scoreboard players set #rotation_time sl.value 120
scoreboard players set #cycle sl.value 240

scoreboard players operation @s sl.timer %= #cycle sl.value

scoreboard players operation #input sl.value = @s sl.timer
scoreboard players operation #input sl.value *= #ascent_range sl.value
scoreboard players operation #input sl.value /= #ascent_time sl.value
function sl:generic/smoothstep
scoreboard players operation #ascent sl.value = #output sl.value
scoreboard players add #ascent sl.value 1000

scoreboard players operation #rotation sl.value = @s sl.timer
scoreboard players operation #rotation sl.value *= #6283 sl.value
scoreboard players operation #rotation sl.value /= #rotation_time sl.value

# Modify position, rotation, and scale using the collection animation timer
scoreboard players set #collection_time sl.value 80
scoreboard players set #restore_time sl.value 40
scoreboard players set #collection_ascent sl.value 16000
scoreboard players set #collection_rotation sl.value 10

scoreboard players operation #collection_timer sl.value = @s sl.collection_timer
execute if score #collection_timer sl.value matches ..-1 run scoreboard players set #collection_timer sl.value 0
scoreboard players operation #collection_timer sl.value *= #1000 sl.value
scoreboard players operation #collection_timer sl.value /= #collection_time sl.value
scoreboard players operation #collection_timer sl.value *= #collection_timer sl.value
scoreboard players operation #collection_timer sl.value /= #1000 sl.value

scoreboard players operation #restore_timer sl.value = @s sl.collection_timer
execute if score #restore_timer sl.value matches 1.. run scoreboard players set #restore_timer sl.value 0
scoreboard players operation #restore_timer sl.value *= #1000 sl.value
scoreboard players operation #restore_timer sl.value /= #restore_time sl.value
scoreboard players operation #restore_timer sl.value *= #restore_timer sl.value
scoreboard players operation #restore_timer sl.value /= #1000 sl.value

scoreboard players operation #collection_ascent sl.value *= #collection_timer sl.value
scoreboard players operation #collection_ascent sl.value /= #1000 sl.value
scoreboard players operation #ascent sl.value += #collection_ascent sl.value

scoreboard players operation #collection_rotation sl.value *= #collection_timer sl.value
scoreboard players operation #collection_rotation sl.value /= #1000 sl.value
scoreboard players operation #rotation sl.value += #collection_rotation sl.value

scoreboard players set #scale sl.value 1000
scoreboard players operation #scale sl.value -= #collection_timer sl.value
scoreboard players operation #scale sl.value -= #restore_timer sl.value
execute if score #scale sl.value matches ..-1 run scoreboard players set #scale sl.value 0

# Write data to entity
data modify storage sl:data tag set value {transformation:{right_rotation:{axis:[1.0f,0.0f,0.0f],angle:0.5f},scale:[1.0f,1.0f,1.0f],left_rotation:{axis:[0.0f,1.0f,0.0f],angle:0.0f},translation:[0.0f,1.0f,0.0f]},start_interpolation:0}
execute store result storage sl:data tag.transformation.left_rotation.angle float 0.001 run scoreboard players get #rotation sl.value
execute store result storage sl:data tag.transformation.scale[0] float 0.001 run scoreboard players get #scale sl.value
execute store result storage sl:data tag.transformation.scale[1] float 0.001 run scoreboard players get #scale sl.value
execute store result storage sl:data tag.transformation.scale[2] float 0.001 run scoreboard players get #scale sl.value
execute store result storage sl:data tag.transformation.translation[1] float 0.001 run scoreboard players get #ascent sl.value
data modify entity @s {} merge from storage sl:data tag