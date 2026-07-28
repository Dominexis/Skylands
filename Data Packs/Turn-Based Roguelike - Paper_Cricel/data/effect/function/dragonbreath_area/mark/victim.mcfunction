
function sys:utils/local_thread/atker/save {id:'effect.dragonbreath_area'}

tag @s remove pc.atker
scoreboard players set @s pc.entity.victim 1
execute store result score #damage pc.main run data get storage pc:temp passive.queue[0].damage
function sys:entity/dmg/victim

function sys:utils/local_thread/atker/load {id:'effect.dragonbreath_area'}

# fx
playsound sys:blood_hit master @a ~ ~1024 ~ 0 1.5 0.5
playsound minecraft:entity.warden.death master @a ~ ~1024 ~ 0 1 0.25

particle minecraft:witch ~-1.5 ~0.1 ~1.5 0 0 0 0 0 force
particle minecraft:witch ~-1.5 ~0.1 ~-1.5 0 0 0 0 0 force
particle minecraft:witch ~-1.4 ~0.1 ~1.4 0 0 0 0 0 force
particle minecraft:witch ~-1.4 ~0.1 ~-1.4 0 0 0 0 0 force
particle minecraft:witch ~-1.3 ~0.1 ~1.3 0 0 0 0 0 force
particle minecraft:witch ~-1.3 ~0.1 ~-1.3 0 0 0 0 0 force
particle minecraft:witch ~-1.2 ~0.1 ~1.2 0 0 0 0 0 force
particle minecraft:witch ~-1.2 ~0.1 ~-1.2 0 0 0 0 0 force
particle minecraft:witch ~-1.1 ~0.1 ~1.1 0 0 0 0 0 force
particle minecraft:witch ~-1.1 ~0.1 ~-1.1 0 0 0 0 0 force
particle minecraft:witch ~-1.0 ~0.1 ~1.0 0 0 0 0 0 force
particle minecraft:witch ~-1.0 ~0.1 ~-1.0 0 0 0 0 0 force
particle minecraft:witch ~-0.9 ~0.1 ~0.9 0 0 0 0 0 force
particle minecraft:witch ~-0.9 ~0.1 ~-0.9 0 0 0 0 0 force
particle minecraft:witch ~-0.8 ~0.1 ~0.8 0 0 0 0 0 force
particle minecraft:witch ~-0.8 ~0.1 ~-0.8 0 0 0 0 0 force
particle minecraft:witch ~-0.7 ~0.1 ~0.7 0 0 0 0 0 force
particle minecraft:witch ~-0.7 ~0.1 ~-0.7 0 0 0 0 0 force
particle minecraft:witch ~-0.6 ~0.1 ~0.6 0 0 0 0 0 force
particle minecraft:witch ~-0.6 ~0.1 ~-0.6 0 0 0 0 0 force
particle minecraft:witch ~-0.5 ~0.1 ~0.5 0 0 0 0 0 force
particle minecraft:witch ~-0.5 ~0.1 ~-0.5 0 0 0 0 0 force
particle minecraft:witch ~-0.4 ~0.1 ~0.4 0 0 0 0 0 force
particle minecraft:witch ~-0.4 ~0.1 ~-0.4 0 0 0 0 0 force
particle minecraft:witch ~-0.3 ~0.1 ~0.3 0 0 0 0 0 force
particle minecraft:witch ~-0.3 ~0.1 ~-0.3 0 0 0 0 0 force
particle minecraft:witch ~-0.2 ~0.1 ~0.2 0 0 0 0 0 force
particle minecraft:witch ~-0.2 ~0.1 ~-0.2 0 0 0 0 0 force
particle minecraft:witch ~-0.1 ~0.1 ~0.1 0 0 0 0 0 force
particle minecraft:witch ~-0.1 ~0.1 ~-0.1 0 0 0 0 0 force
particle minecraft:witch ~0.0 ~0.1 ~-0.0 0 0 0 0 0 force
particle minecraft:witch ~0.0 ~0.1 ~0.0 0 0 0 0 0 force
particle minecraft:witch ~0.1 ~0.1 ~-0.1 0 0 0 0 0 force
particle minecraft:witch ~0.1 ~0.1 ~0.1 0 0 0 0 0 force
particle minecraft:witch ~0.2 ~0.1 ~-0.2 0 0 0 0 0 force
particle minecraft:witch ~0.2 ~0.1 ~0.2 0 0 0 0 0 force
particle minecraft:witch ~0.3 ~0.1 ~-0.3 0 0 0 0 0 force
particle minecraft:witch ~0.3 ~0.1 ~0.3 0 0 0 0 0 force
particle minecraft:witch ~0.4 ~0.1 ~-0.4 0 0 0 0 0 force
particle minecraft:witch ~0.4 ~0.1 ~0.4 0 0 0 0 0 force
particle minecraft:witch ~0.5 ~0.1 ~-0.5 0 0 0 0 0 force
particle minecraft:witch ~0.5 ~0.1 ~0.5 0 0 0 0 0 force
particle minecraft:witch ~0.6 ~0.1 ~-0.6 0 0 0 0 0 force
particle minecraft:witch ~0.6 ~0.1 ~0.6 0 0 0 0 0 force
particle minecraft:witch ~0.7 ~0.1 ~-0.7 0 0 0 0 0 force
particle minecraft:witch ~0.7 ~0.1 ~0.7 0 0 0 0 0 force
particle minecraft:witch ~0.8 ~0.1 ~-0.8 0 0 0 0 0 force
particle minecraft:witch ~0.8 ~0.1 ~0.8 0 0 0 0 0 force
particle minecraft:witch ~0.9 ~0.1 ~-0.9 0 0 0 0 0 force
particle minecraft:witch ~0.9 ~0.1 ~0.9 0 0 0 0 0 force
particle minecraft:witch ~1.0 ~0.1 ~-1.0 0 0 0 0 0 force
particle minecraft:witch ~1.0 ~0.1 ~1.0 0 0 0 0 0 force
particle minecraft:witch ~1.1 ~0.1 ~-1.1 0 0 0 0 0 force
particle minecraft:witch ~1.1 ~0.1 ~1.1 0 0 0 0 0 force
particle minecraft:witch ~1.2 ~0.1 ~-1.2 0 0 0 0 0 force
particle minecraft:witch ~1.2 ~0.1 ~1.2 0 0 0 0 0 force
particle minecraft:witch ~1.3 ~0.1 ~-1.3 0 0 0 0 0 force
particle minecraft:witch ~1.3 ~0.1 ~1.3 0 0 0 0 0 force
particle minecraft:witch ~1.4 ~0.1 ~-1.4 0 0 0 0 0 force
particle minecraft:witch ~1.4 ~0.1 ~1.4 0 0 0 0 0 force