
# effect
scoreboard players remove #cost pc.main 1
execute if score #cost pc.main matches ..-1 run return fail
execute if score #cost pc.main < #block pc.main at @s run function pc:sys/grid/select/sys/use
execute if score #cost pc.main < #block pc.main positioned as @s positioned ~-1.5 ~-100 ~-1.5 run rotate @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.intent] ~ 0
execute as @n[type=minecraft:marker,distance=..1,tag=pc.grid] at @s run function pc:sys/grid/select/nearest/back/use

# fx