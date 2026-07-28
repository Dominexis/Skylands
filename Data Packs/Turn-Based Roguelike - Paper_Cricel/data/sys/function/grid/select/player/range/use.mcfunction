
data modify storage pc:temp select set from entity 20060423-0-0-1-1 item.components."minecraft:custom_data".pc

execute as @e[tag=pc.player.now,type=armor_stand,limit=1] at @s run function sys:grid/select/player/range/2 with storage pc:temp select

data remove storage pc:temp select
