
tag @s add pc.item.refresh
data modify entity @s item set from storage pc:temp desc.real_item

# Energy
execute unless data entity @s item.components.minecraft:custom_data.pc.energy_original run data modify entity @s item.components.minecraft:custom_data.pc.energy_original set from entity @s item.components.minecraft:custom_data.pc.energy
execute if data storage pc:temp desc.energy run function pc:sys/item/refresh/energy/calculate
execute if data storage pc:temp desc.energy_set run function pc:sys/item/refresh/energy/set_value
data modify storage pc:temp desc.item_name.energy set from entity @s item.components.minecraft:custom_data.pc.energy

# Name
data modify storage pc:temp desc.item_name.name set from entity @s item.components.minecraft:custom_data.pc.item_name
execute summon text_display run function pc:sys/item/refresh/interpret/name
data modify entity @s item.components."minecraft:item_name" set from storage pc:temp desc.item_name.output