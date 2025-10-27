scoreboard players set .global did.10t 10
execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=minecraft:marker,distance=..1,tag=did.marker.main] as @e[type=minecraft:marker,dx=200,dy=100,dz=-200,tag=did.lantern_block] at @s run function did:torch/delete

execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=minecraft:marker,distance=..1,tag=did.marker.main] as @a[dx=200,dy=100,dz=-200,tag=did.player.logged,team=sl.player] at @s run function did:torch/burning