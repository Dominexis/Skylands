
# Shield
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

data modify storage pc:temp shield set value {value:3}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:entity/shield/use

function sys:grid/range/clear

# Fire Area
execute at @e[tag=pc.grid.atker,type=marker,limit=1] run function item:skill/warrior/inferno/2

function sys:combat/turn/end_act