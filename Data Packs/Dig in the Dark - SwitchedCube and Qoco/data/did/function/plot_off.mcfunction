## This function runs when the plot turns off

execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=minecraft:marker,distance=..1,tag=did.marker.main] run function did:marker/plot_off

scoreboard objectives remove did.raycast
scoreboard objectives remove did.sand.random

scoreboard objectives remove did.player.lighter_uses
scoreboard objectives remove did.player.torch_burn_time
scoreboard objectives remove did.player.torch_burn_loop

scoreboard objectives remove did.player.torch.placed
scoreboard objectives remove did.player.id
scoreboard objectives remove did.player.item_count
scoreboard objectives remove did.player.quota

scoreboard objectives remove did.10t
