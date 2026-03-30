
# effect
$data modify storage pc:temp desc.real_item set from entity @s Inventory[{components:{"minecraft:custom_data":{pc:{category:$(category)}}}}]
execute store result storage pc:temp desc.real_item_slot int 1 run data get storage pc:temp desc.real_item.Slot