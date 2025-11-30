
# effect
scoreboard players remove #cost pc.main 1
execute if score #cost pc.main matches ..-1 run return fail
execute if score #cost pc.main < #block pc.main at @s run function pc:sys/grid/select/sys/use
execute if score #cost pc.main < #block pc.main positioned as @s positioned ~-1.5 ~-100 ~-1.5 run rotate @n[type=marker,tag=pc.intent,dx=2,dy=200,dz=2] ~ 0
execute as @n[type=marker,tag=pc.grid,distance=..1] at @s run function pc:sys/grid/select/nearest/back/use

# fx