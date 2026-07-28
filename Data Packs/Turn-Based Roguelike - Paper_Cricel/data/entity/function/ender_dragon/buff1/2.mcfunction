
execute as @e[tag=pc.entity.end_crystal,type=end_crystal,limit=2] at @s run function entity:ender_dragon/buff1/revive/heal
execute as @e[tag=pc.effect.undying_shell,type=item_display,limit=2] at @s run function entity:ender_dragon/buff1/revive/use

data modify storage pc:temp effect set value {id:'strength',value:4}
function sys:effect/apply

function sys:combat/turn/end_act