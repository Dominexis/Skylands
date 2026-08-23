
execute as @e[tag=pc.entity.end_crystal,type=end_crystal,limit=2,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/buff1/revive/heal
execute as @e[tag=pc.effect.undying_shell,type=item_display,limit=2,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_dragon/buff1/revive/use

data modify storage pc:temp effect set value {id:'strength',value:4}
function pc:sys/effect/apply

function pc:sys/combat/turn/end_act