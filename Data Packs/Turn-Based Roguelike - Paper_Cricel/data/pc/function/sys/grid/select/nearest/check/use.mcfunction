
# effect
execute if data storage pc:temp nearest.found run return fail
execute as @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid] at @s run function pc:sys/grid/select/nearest/check/2 with storage pc:temp nearest