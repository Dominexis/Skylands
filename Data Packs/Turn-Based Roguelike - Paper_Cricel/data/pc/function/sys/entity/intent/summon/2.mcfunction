## (storage) pc:temp intent.intents [{id:'test1'},{id:'test2',weight:2}]

$function pc:entity/$(id)/intent

function pc:sys/entity/intent/summon/3

execute store result score #length pc.main if data storage pc:temp intent.intents[]
execute store result score #index pc.main run random value 0..2147483646
execute store result storage pc:temp intent.index int 1 run scoreboard players operation #index pc.main %= #length pc.main
function pc:sys/entity/intent/summon/4 with storage pc:temp intent

data modify storage pc:temp intent.id set from entity @s data.id
data modify entity @s data.intent set from storage pc:temp intent
data remove storage pc:temp intent