
data modify storage pc:temp effect set value {id:'strength',value:2}
function sys:effect/apply

data modify storage pc:temp effect set value {id:'robust',value:1,buffer:1b}
function sys:effect/apply

function sys:combat/turn/end_act

# fx
particle minecraft:trial_spawner_detection ~ ~ ~ 1 0.25 1 0.01 10 force
playsound minecraft:entity.hoglin.converted_to_zombified master @a ~ ~1024 ~ 0 1 1
function sys:fx/buff/use