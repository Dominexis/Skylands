# Get location and rotation of executing entity
data modify storage sl:data tag set from entity @s {}
execute store result score #x sl.value run data get storage sl:data tag.Pos[0]
execute store result score #y sl.value run data get storage sl:data tag.Pos[1]
execute store result score #z sl.value run data get storage sl:data tag.Pos[2]
execute store result score #yaw sl.value run data get storage sl:data tag.Rotation[0]
execute store result score #pitch sl.value run data get storage sl:data tag.Rotation[1]