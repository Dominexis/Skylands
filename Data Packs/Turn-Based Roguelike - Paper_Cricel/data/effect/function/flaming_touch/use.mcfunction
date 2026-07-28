
tag @s add pc.grid.triggered

data modify storage pc:temp effect set value {id:"fire_area"}
execute store result storage pc:temp effect.value int 1 run scoreboard players get #effect.value pc.main
function sys:effect/apply