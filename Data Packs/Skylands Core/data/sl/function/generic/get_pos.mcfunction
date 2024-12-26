# Get location of executing entity
data modify storage sl:data tag.Pos set from entity @s Pos
execute store result score #x sl.value run data get storage sl:data tag.Pos[0]
execute store result score #y sl.value run data get storage sl:data tag.Pos[1]
execute store result score #z sl.value run data get storage sl:data tag.Pos[2]