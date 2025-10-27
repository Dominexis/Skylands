# Set data of collectible
scoreboard players operation @s sl.plot = #plot sl.value
scoreboard players set @s sl.timer 0
scoreboard players set @s sl.collection_timer 0
tag @s add sl.collectible

# Set entity transformation
function sl:collectible/transformation

# Set base data
data merge entity @s {interpolation_duration:1,brightness:{sky:15}}

# Put item into entity
item replace entity @s contents with minecraft:glass