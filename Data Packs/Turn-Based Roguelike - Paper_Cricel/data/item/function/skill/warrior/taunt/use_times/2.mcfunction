
data modify storage pc:temp effect set value {id:'vulnerable'}
execute store result storage pc:temp effect.value int 1 run data get entity @s data.effects[{id:'vulnerable'}].value
function sys:effect/apply

# fx
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.1 0.2 0.1 0.1 20 force