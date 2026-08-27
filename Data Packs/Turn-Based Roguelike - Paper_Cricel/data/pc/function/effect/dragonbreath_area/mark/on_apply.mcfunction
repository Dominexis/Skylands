
data modify storage pc:temp passive.queue append value {func:"function pc:effect/dragonbreath_area/mark/victim"}

execute store result score #damage pc.main run data get storage pc:temp effect.value
execute store result score #damage2 pc.main run data get entity @s data.effects[{id:"dragonbreath_area/mark"}].value
execute store result storage pc:temp passive.queue[-1].damage int 1 run scoreboard players operation #damage pc.main += #damage2 pc.main

execute unless score @s pc.thread_index matches 1.. at @s run function pc:sys/utils/passive/queue with storage pc:temp passive.queue[0]