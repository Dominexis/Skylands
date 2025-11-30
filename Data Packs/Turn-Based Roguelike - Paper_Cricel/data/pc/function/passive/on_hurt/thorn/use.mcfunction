
# effect
execute if data storage pc:temp damage.display run return fail

function pc:sys/object/damage/atker_temp/save {id:"passive_thorn"}
execute as @n[predicate=pc:object/all,type=!player,tag=pc.damage.passive_thorn,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/on_hurt/thorn/2
function pc:sys/object/damage/atker_temp/load {id:"passive_thorn"}