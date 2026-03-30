
# effect
tag @s add pc.intent.now

execute as @n[type=marker,tag=pc.grid,dx=2,dy=200,dz=2] at @s run function pc:sys/grid/state/reset_data
execute as @n[type=marker,tag=pc.grid,dx=2,dy=200,dz=2] at @s run function pc:sys/grid/state/reset_avail

execute unless data entity @n[type=marker,tag=pc.grid,dx=2,dy=200,dz=2] {data:{select:{avail:true}}} run kill @s
execute if data entity @s data.avail.potential_intent run kill @s