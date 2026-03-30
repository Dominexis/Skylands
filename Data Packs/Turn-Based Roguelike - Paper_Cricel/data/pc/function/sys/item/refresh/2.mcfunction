
# effect
execute unless data storage pc:temp desc.lore summon minecraft:item_display run function pc:sys/item/refresh/modify/name
execute if data storage pc:temp desc.lore summon minecraft:item_display run function pc:sys/item/refresh/modify/lore with storage pc:temp desc.lore

execute if data storage pc:temp desc.item run function pc:sys/item/refresh/regive/no_slot with storage pc:temp desc
execute if data storage pc:temp desc.slot run function pc:sys/item/refresh/regive/slot with storage pc:temp desc
execute if data storage pc:temp desc.category run function pc:sys/item/refresh/regive/no_slot with storage pc:temp desc
execute if data storage pc:temp desc.lore.item run function pc:sys/item/refresh/regive/no_slot with storage pc:temp desc
execute if data storage pc:temp desc.lore.slot run function pc:sys/item/refresh/regive/slot with storage pc:temp desc