
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:ender_eye/attack1/3

data modify storage pc:temp effect set value {id:'strength',value:2}
function sys:effect/apply

function sys:combat/turn/end_act