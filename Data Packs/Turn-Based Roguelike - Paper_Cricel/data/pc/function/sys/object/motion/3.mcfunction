
execute on passengers at @s align xz run function pc:sys/object/motion/3b
execute positioned ~-5.5 ~-100 ~-5.5 as @e[type=minecraft:marker,dx=10,dy=200,dz=10,tag=pc.grid] at @s run function pc:sys/grid/state/reset_occupy
kill @s