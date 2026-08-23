
data modify storage pc:temp effect set value {id:'tnt_tank',value:2}
function pc:sys/effect/apply

data modify storage pc:temp effect set value {id:'robust',value:1,buffer:1b}
function pc:sys/effect/apply

function pc:sys/combat/turn/end_act

# fx
particle minecraft:trial_spawner_detection ~ ~ ~ 1 0.25 1 0.01 10 force
playsound minecraft:entity.hoglin.converted_to_zombified master @a ~ ~1024 ~ 0 1 1
function pc:sys/fx/buff/use