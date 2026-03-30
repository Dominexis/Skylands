
# effect
execute store result storage pc:temp restock.index int 1 run scoreboard players add #index pc.main 1
function pc:sys/game/rest_area/trader/restock/3 with storage pc:temp restock

execute if score #index pc.main < #max pc.main run function pc:sys/game/rest_area/trader/restock/2