
execute if entity @s[gamemode=creative] run return fail

function pc:sys/rest_area/purchase/2
data modify storage pc:temp purchase set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
execute store result score #cost pc.main run data get storage pc:temp purchase.money_cost
function pc:sys/rest_area/purchase/3

# reset
clear @s *[minecraft:custom_data~{pc:{sys:{shop:1b}}}]
data remove storage pc:temp purchase

function pc:sys/rest_area/campfire/update
function pc:sys/rest_area/trader/update