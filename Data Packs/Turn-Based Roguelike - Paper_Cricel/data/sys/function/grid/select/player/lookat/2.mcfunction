
scoreboard players add #range pc.main 10

# if (looking grid) :
execute if function sys:grid/select/player/lookat/is positioned ~-1.25 ~-100 ~-1.25 as @e[tag=pc.grid,type=marker,dx=1.25,dy=200,dz=1.25,limit=1] at @s run return run function sys:grid/select/player/lookat/3
execute if score #range pc.main matches ..400 positioned ^ ^ ^1.0 run return run function sys:grid/select/player/lookat/2

# else :
execute as @e[tag=pc.grid.looking,type=marker,limit=1] at @s run function sys:grid/select/player/lookat/clear