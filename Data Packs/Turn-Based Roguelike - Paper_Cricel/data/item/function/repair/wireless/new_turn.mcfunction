
execute if entity @e[predicate=sys:entity/repair,limit=1] run return fail

data modify storage pc:temp repair set value {value:1,slot:"current"}
function sys:item/db/use