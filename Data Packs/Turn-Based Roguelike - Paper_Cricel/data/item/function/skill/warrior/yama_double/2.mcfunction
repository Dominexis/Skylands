
data modify storage pc:temp effect set value {id:fire_area,value:4}
function sys:effect/apply

data modify storage pc:temp passive.current set from entity @s data.effects[{id:fire_area}]

function effect:fire_area/grid_round

data modify entity @s data.effects[{id:fire_area}] set from storage pc:temp passive.current
function sys:grid/infobar/use