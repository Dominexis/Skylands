
data modify storage pc:temp lair.type set from entity @s data.lair.type
$data modify storage pc:temp lair.id set from entity @s data.lair.id[$(index)]

execute store success score #is_player pc.main if data storage pc:temp {lair:{type:'ally',id:'player'}}
execute if score #is_player pc.main matches 1 as @a run function sys:combat/start/summon/3b with entity @s equipment.body.components.minecraft:custom_data.data.entity
execute if score #is_player pc.main matches 0 run function sys:combat/start/summon/4 with storage pc:temp lair