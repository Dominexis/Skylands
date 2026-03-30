
# effect
execute if data storage pc:temp nearest.found run return fail
execute as @n[type=marker,tag=pc.grid,dx=2,dy=200,dz=2] at @s run function pc:sys/grid/select/nearest/check/2 with storage pc:temp nearest