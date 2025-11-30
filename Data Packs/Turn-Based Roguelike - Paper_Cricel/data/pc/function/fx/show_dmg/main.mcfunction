
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches 15.. if predicate {"condition": "minecraft:entity_properties", "entity": "this", "predicate": {"flags": {"is_on_ground": true}}} run function pc:void
execute if score @s pc.duration matches 15.. unless block ~ ~-1.5 ~ #pc:transparent run function pc:void