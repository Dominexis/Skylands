## This function runs every tick at the center of the plot at Y=0 when the plot is on

execute if score .global did.10t matches 1.. run scoreboard players remove .global did.10t 1
execute if score .global did.10t matches ..0 run function did:torch/main_10t

execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=minecraft:marker,distance=..1,tag=did.marker.main] run function did:marker/tick
