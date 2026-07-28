
function sys:item/db/api/load with storage pc:temp passive.current
execute if score #db pc.main matches 0 run return fail

function sys:utils/local_thread/atker/save {id:"skill.warrior.engulfed_pain"}

data modify storage pc:temp damage set value {operand:"self"}
execute as @e[predicate=sys:entity/enemy] at @s run function item:skill/warrior/engulfed_pain/end_turn/2
function sys:entity/dmg/atker

function sys:utils/local_thread/atker/load {id:"skill.warrior.engulfed_pain"}