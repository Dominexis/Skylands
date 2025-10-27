# Collect the collectible
scoreboard players operation #plot sl.value = @s sl.plot
scoreboard players set #boolean sl.value 0
execute as @a[distance=..1,predicate=sl:player] unless score @s sl.collection_timer matches 1.. if score @s sl.plot = #plot sl.value at @s run function sl:collectible/collect
execute if score #boolean sl.value matches 1 if score @s sl.collection_timer matches 0 run scoreboard players set @s sl.collection_timer 1

# Process animation
scoreboard players add @s sl.timer 1
execute unless score @s sl.collection_timer matches 0 run scoreboard players add @s sl.collection_timer 1
execute if score @s sl.collection_timer matches 100.. run scoreboard players set @s sl.collection_timer -60
function sl:collectible/transformation

# Play sound every 2 seconds
scoreboard players operation #timer sl.value = @s sl.timer
scoreboard players operation #timer sl.value %= #40 sl.value
execute if score #timer sl.value matches 0 if score @s sl.collection_timer matches 0 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 2