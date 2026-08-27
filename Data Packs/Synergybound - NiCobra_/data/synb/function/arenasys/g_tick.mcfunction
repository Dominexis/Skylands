##

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena] at @s run function synb:arenasys/_local_tick

# Special decoration
# [SKYLANDS: ABSCOORDS]
particle minecraft:ominous_spawning 3344 123 -2290 5 3 5 0.1 3

# Arena exits
# [SKYLANDS: ABSCOORDS]

# Arena 1
execute as @a[x=3287,y=56,z=-2350,dx=5,dy=7,dz=4,team=sl.player,tag=synb.attr.player_in_arena] run tag @s remove synb.attr.player_in_arena
execute as @a[x=3297,y=59,z=-2351,dx=2,dy=2,dz=1,team=sl.player,tag=synb.type.player,tag=!synb.attr.player_in_arena] run tp @s 3298 59 -2347

# Arena 2
execute as @a[x=3276,y=84,z=-2251,dx=11,dy=50,dz=3,team=sl.player,tag=synb.attr.player_in_arena] run tag @s remove synb.attr.player_in_arena
execute as @a[x=3276,y=84,z=-2253,dx=2,dy=50,dz=3,team=sl.player,tag=synb.attr.player_in_arena] run tag @s remove synb.attr.player_in_arena
execute as @a[x=3286,y=84,z=-2253,dx=2,dy=50,dz=3,team=sl.player,tag=synb.attr.player_in_arena] run tag @s remove synb.attr.player_in_arena
execute as @a[x=3281,y=86,z=-2257,dx=2,dy=2,dz=1,team=sl.player,tag=synb.type.player,tag=!synb.attr.player_in_arena] run tp @s 3282 85 -2250

# Arena 3
execute as @a[x=3389,y=130,z=-2309,dx=5,dy=2,dz=3,team=sl.player,tag=synb.attr.player_in_arena] run tag @s remove synb.attr.player_in_arena
execute as @a[x=3389,y=123,z=-2309,dx=5,dy=0,dz=3,team=sl.player,tag=synb.type.player,tag=!synb.attr.player_in_arena] run tp @s 3391 130 -2307