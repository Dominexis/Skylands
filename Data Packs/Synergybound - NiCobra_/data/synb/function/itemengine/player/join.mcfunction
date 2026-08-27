# As/At : player
##

execute if entity @s[tag=synb.type.dead_player] run function synb:itemengine/player/quit
execute if entity @s[tag=synb.type.player] run return 0

playsound minecraft:block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.3 1.5

# Registering
scoreboard players add #count synb.IEPlayer.Registered 1
scoreboard players operation @s synb.IEPlayer.Registered = #count synb.IEPlayer.Registered
data modify storage synb.d:itemengine players_inv append value []

# Joining
tag @s add synb.type.player
function synb:itemengine/mod/spawn
function synb:utils/spawn_money {amount:5}
effect give @s minecraft:instant_health 1 50 true