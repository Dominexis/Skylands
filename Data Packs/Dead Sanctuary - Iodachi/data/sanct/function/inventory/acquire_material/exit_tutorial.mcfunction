
scoreboard players set #tutorial_exited sanct.numbers 1

# Activate barrier
execute unless score #barrier_particle sanct.numbers matches 1.. run playsound minecraft:block.beacon.power_select master @a[distance=..16] -2318 83 2309 1 1.5
scoreboard players set #barrier_particle sanct.numbers 1

# Open door
playsound minecraft:block.iron_door.open block @a[distance=..16] -2318 83 2319
setblock -2318 83 2319 minecraft:iron_door[facing=south,open=true]

# Summon more broken swords for more players
function sanct:inventory/item_pickup/multiplayer_swords