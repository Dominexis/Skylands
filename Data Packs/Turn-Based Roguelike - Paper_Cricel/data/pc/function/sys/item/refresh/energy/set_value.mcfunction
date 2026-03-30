
# effect
execute store result score #energy pc.main run data get storage pc:temp desc.energy_set

execute store result entity @s item.components."minecraft:custom_data".pc.energy int 1 run scoreboard players get #energy pc.main
execute if score #energy pc.main matches ..-1 run data modify entity @s item.components."minecraft:custom_data".pc.energy set value 0