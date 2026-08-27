
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/ender_eye/attack1/3

data modify storage pc:temp effect set value {id:'strength',value:2}
function pc:sys/effect/apply

function pc:sys/combat/turn/end_act