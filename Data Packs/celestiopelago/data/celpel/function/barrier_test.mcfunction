# Tests if the player hits the barriers at the bottom
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if block ~ ~-1 ~ barrier run function celpel:barrier_kill
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if block ~-1 ~ ~ barrier run function celpel:barrier_kill
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if block ~ ~ ~-1 barrier run function celpel:barrier_kill
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if block ~1 ~ ~ barrier run function celpel:barrier_kill
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] at @s if block ~ ~ ~1 barrier run function celpel:barrier_kill