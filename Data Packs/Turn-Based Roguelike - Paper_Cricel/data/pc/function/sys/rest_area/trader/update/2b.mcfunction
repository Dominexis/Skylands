
data modify entity 20060423-0-0-0-1 item set from storage pc:temp money.items[0].data
$item replace block ~ ~ ~ container.$(slot) from entity 20060423-0-0-0-1 contents
execute store result score #money pc.main run data get entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc.money_cost
$item modify block ~ ~ ~ container.$(slot) pc:sys/money

data remove storage pc:temp money.items[0]
execute if data storage pc:temp money.items[0] run function pc:sys/rest_area/trader/update/2b with storage pc:temp money.items[0]