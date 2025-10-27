## This function runs as and at a player when they log into the plot

execute if entity @s[type=minecraft:player,tag=did.player.logged] run function did:logout

execute store result score @s[type=minecraft:player] did.player.id run scoreboard players get @s[type=minecraft:player] sl.id
function sl:api/disable_plate_checkpoint
execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=minecraft:marker,distance=..1,tag=did.marker.main] run function did:marker/login
execute if entity @s[type=minecraft:player] at @s[type=minecraft:player] run function sl:api/set_checkpoint

clear @s[type=minecraft:player]
clear @s[type=minecraft:player] *[minecraft:custom_data~{did:{no_drop:1}}]
clear @s[type=minecraft:player] *[minecraft:custom_data~{did:{sellable:1}}]

execute at @s[type=minecraft:player] run loot give @s[type=minecraft:player] loot did:item/brush
execute at @s[type=minecraft:player] run loot give @s[type=minecraft:player] loot did:item/torch
execute at @s[type=minecraft:player] run loot give @s[type=minecraft:player] loot did:item/lighter

gamemode adventure
tag @s[type=minecraft:player] add did.player.logged

tellraw @s[type=minecraft:player] {translate:"did.game.rules",type:"translatable"}
execute at @s[type=minecraft:player] run playsound minecraft:entity.experience_orb.pickup master @s[type=minecraft:player] ~ ~ ~

effect give @s[type=minecraft:player] minecraft:saturation 1 255 true

scoreboard players set @s[type=minecraft:player] did.player.lighter_uses 0
scoreboard players set @s[type=minecraft:player] did.player.torch_burn_time 600
scoreboard players set @s[type=minecraft:player] did.player.torch_burn_loop 0
scoreboard players set @s[type=minecraft:player] did.player.torch.placed 0

scoreboard players set @s[type=minecraft:player] did.player.item_count 0
scoreboard players set @s[type=minecraft:player] did.player.quota 0