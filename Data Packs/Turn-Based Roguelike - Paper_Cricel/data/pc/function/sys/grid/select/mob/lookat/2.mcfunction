
scoreboard players add #range pc.main 1

execute if function pc:sys/grid/select/player/lookat/is positioned ~-1.5 ~-100 ~-1.5 as @e[predicate=!pc:sys/entity/player,predicate=pc:sys/entity/any_real,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] at @s run return run function pc:sys/grid/select/mob/lookat/3

execute if score #range pc.main matches ..60 positioned ^ ^ ^1 run function pc:sys/grid/select/mob/lookat/2