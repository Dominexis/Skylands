## This function runs as and at a player when they log into the plot

execute as @s[type=player,tag=did.player.logged] run function did:logout

execute store result score @s[type=player] did.player.id run scoreboard players get @s[type=player] sl.id
function sl:api/disable_plate_checkpoint
execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=marker, tag=did.marker.main,distance=..1] run function did:marker/login
execute as @s[type=player] at @s[type=player] run function sl:api/set_checkpoint

clear @s[type=player]
clear @s[type=player] *[custom_data~{did:{no_drop:1}}]
clear @s[type=player] *[custom_data~{did:{sellable:1}}]

execute at @s[type=player] run loot give @s[type=player] loot did:item/brush
execute at @s[type=player] run loot give @s[type=player] loot did:item/torch
execute at @s[type=player] run loot give @s[type=player] loot did:item/lighter

gamemode adventure
tag @s[type=player] add did.player.logged

tellraw @s[type=player] {translate: "did.game.rules"}
execute at @s[type=player] run playsound entity.experience_orb.pickup master @s[type=player] ~ ~ ~

effect give @s[type=player] saturation 1 255 true

scoreboard players set @s[type=player] did.player.lighter_uses 0
scoreboard players set @s[type=player] did.player.torch_burn_time 600
scoreboard players set @s[type=player] did.player.torch_burn_loop 0
scoreboard players set @s[type=player] did.player.torch.placed 0

scoreboard players set @s[type=player] did.player.item_count 0
scoreboard players set @s[type=player] did.player.quota 0