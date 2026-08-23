
data modify storage pc:temp effect set value {id:fire_area,value:4}
function pc:sys/effect/apply

data modify storage pc:temp passive.current set from entity @s data.effects[{id:fire_area}]

function pc:effect/fire_area/grid_round

data modify entity @s data.effects[{id:fire_area}] set from storage pc:temp passive.current
function pc:sys/grid/infobar/use