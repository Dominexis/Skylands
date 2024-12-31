# Get rotation of executing entity
data modify storage sl:data tag.Pos set from entity @s Pos
execute store result score #yaw sl.value run data get storage sl:data tag.Rotation[0]
execute store result score #pitch sl.value run data get storage sl:data tag.Rotation[1]