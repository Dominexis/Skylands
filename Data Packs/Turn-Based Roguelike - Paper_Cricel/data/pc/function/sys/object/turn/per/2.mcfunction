
# effect
tag @s add pc.intent.now

execute as @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid] at @s run function pc:sys/grid/state/reset_data
execute as @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid] at @s run function pc:sys/grid/state/reset_avail

execute unless data entity @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid] {data:{select:{avail:1b}}} run kill @s
execute if data entity @s data.avail.potential_intent run kill @s