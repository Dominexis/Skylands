
function pc:sys/item/db/api/load with storage pc:temp passive.current
execute if score #db pc.main matches 0 run return fail

function pc:sys/utils/local_thread/atker/save {id:"skill.warrior.engulfed_pain"}

data modify storage pc:temp damage set value {operand:"self"}
execute as @e[predicate=pc:sys/entity/enemy,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:item/skill/warrior/engulfed_pain/end_turn/2
function pc:sys/entity/dmg/atker

function pc:sys/utils/local_thread/atker/load {id:"skill.warrior.engulfed_pain"}