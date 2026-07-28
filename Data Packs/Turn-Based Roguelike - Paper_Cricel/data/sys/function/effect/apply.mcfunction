## (storage) pc:temp effect {id:'strength',type:'include_zero / unstackable / stackable',value:1,buffer:true}

function sys:effect/apply/2 with storage pc:temp effect

data remove storage pc:temp curr_effects
data remove storage pc:temp effects

# if (self == grid) :
execute if entity @s[tag=pc.grid] at @s run return run function sys:grid/infobar/use

# else :
function sys:entity/infobar/update