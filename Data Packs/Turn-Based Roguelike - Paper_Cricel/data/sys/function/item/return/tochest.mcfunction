
$execute if items block $(pos) container.$(slot) * run function sys:item/return/tochest/2 with entity @s Item.components."minecraft:custom_data".pc.return_chest
$item replace block $(pos) container.$(slot) from entity @s contents
kill @s