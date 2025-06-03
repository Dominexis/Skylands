scoreboard players set .global did.10t 10
execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=marker, tag=did.marker.main,distance=..1] as @e[type=marker,tag=did.lantern_block,dz=-200,dx=200,dy=100] at @s run function did:torch/delete

execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=marker, tag=did.marker.main,distance=..1] as @a[team=sl.player,tag=did.player.logged,dz=-200,dx=200,dy=100] at @s run function did:torch/burning