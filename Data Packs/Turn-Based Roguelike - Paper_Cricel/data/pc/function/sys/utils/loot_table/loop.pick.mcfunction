
# effect
execute store result entity @s data.PosX int 1 run data get block ~ ~ ~ x
execute store result entity @s data.PosY int 1 run data get block ~ ~ ~ y
execute store result entity @s data.PosZ int 1 run data get block ~ ~ ~ z
data modify entity @s data.slot set from storage pc:temp loot.slot[0]
function pc:sys/utils/loot_table/choose with entity @s data

kill @s
data remove storage pc:temp loot.slot[0]

execute if data storage pc:temp loot.slot[0] as @n[type=minecraft:marker,distance=..0.01,tag=pc.temp,sort=random] run function pc:sys/utils/loot_table/loop.pick