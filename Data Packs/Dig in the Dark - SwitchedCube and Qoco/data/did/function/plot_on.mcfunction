## This function runs when the plot turns on

function did:plot_off

scoreboard objectives add did.10t dummy
scoreboard players set .global did.10t 10

execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["did.marker.main"]}
execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=marker,tag=did.marker.main,distance=..1] run function did:marker/plot_on

scoreboard objectives add did.raycast dummy
scoreboard objectives add did.sand.random dummy

scoreboard objectives add did.player.lighter_uses dummy
scoreboard objectives add did.player.torch_burn_time dummy
scoreboard objectives add did.player.torch_burn_loop dummy

scoreboard objectives add did.player.torch.placed dummy
scoreboard objectives add did.player.id dummy
scoreboard objectives add did.player.item_count dummy
scoreboard objectives add did.player.quota dummy

