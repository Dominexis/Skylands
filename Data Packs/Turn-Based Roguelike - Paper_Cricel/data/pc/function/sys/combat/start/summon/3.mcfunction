
data modify storage pc:temp lair.type set from entity @s data.lair.type
$data modify storage pc:temp lair.id set from entity @s data.lair.id[$(index)]

execute store success score #is_player pc.main if data storage pc:temp {lair:{type:'ally',id:'player'}}
execute if score #is_player pc.main matches 1 as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] run function pc:sys/combat/start/summon/3b with entity @s equipment.body.components.minecraft:custom_data.data.entity
execute if score #is_player pc.main matches 0 run function pc:sys/combat/start/summon/4 with storage pc:temp lair