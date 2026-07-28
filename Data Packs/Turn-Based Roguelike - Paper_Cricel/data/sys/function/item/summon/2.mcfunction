## (exe) item_display

data merge entity @s {Tags:[pc.summon],item:{id:"paper"}}
data merge storage pc:temp {item:{components:{"!attribute_modifiers":{},"max_stack_size":1,consumable:{animation:"none",sound:"intentionally_empty",consume_seconds:20060423},food:{nutrition:0,saturation:0,can_always_eat:true},unbreakable:{},tooltip_display:{hidden_components:["unbreakable","trim","potion_contents","attribute_modifiers","dyed_color"]}}}}

$data modify storage pc:temp item.name set from storage pc:lang item.$(category).$(id)
$data modify storage pc:temp item.lore set from storage pc:lang lore.$(category).$(id)
execute store result storage pc:temp item.db.max int 1 run data get storage pc:temp item.db.base
execute unless data storage pc:temp item.ep.value run execute store result storage pc:temp item.ep.value int 1 run data get storage pc:temp item.ep.base

execute if data storage pc:temp item.info[0] run data modify storage pc:temp item.sys.info set value 1b
execute if data storage pc:temp item.item run data modify entity @s item.id set from storage pc:temp item.item
execute if function sys:item/summon/unclickable/is run function sys:item/summon/unclickable/use

data modify storage pc:temp item.components."minecraft:custom_data".pc set from storage pc:temp item
data modify entity @s item.components set from storage pc:temp item.components
function sys:item/update/2