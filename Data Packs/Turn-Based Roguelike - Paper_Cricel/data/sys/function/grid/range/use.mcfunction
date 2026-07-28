## usage : run function on any grid you select
## (storage) pc:temp range

scoreboard players reset #return pc.main
tag @s add pc.grid.self

function sys:grid/range/first with storage pc:temp range
execute positioned ~-1.5 ~-100 ~-1.5 run function sys:grid/range/2
function sys:grid/range/last with storage pc:temp range

tag @s remove pc.grid.self
return run scoreboard players get #return pc.main