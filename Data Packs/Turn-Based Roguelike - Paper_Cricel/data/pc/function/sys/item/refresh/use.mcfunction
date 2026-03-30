# usage : (storage) pc:temp desc {item/slot/category/lore:{slot/item,index,text}}

# effect
execute unless data storage pc:temp desc.slot unless entity @s[type=minecraft:player] run return run function pc:sys/item/refresh/find_player

# Input
execute if data storage pc:temp desc.item run function pc:sys/item/refresh/data/item with storage pc:temp desc
execute if data storage pc:temp desc.slot run function pc:sys/item/refresh/data/slot with storage pc:temp desc
execute if data storage pc:temp desc.category run function pc:sys/item/refresh/data/category with storage pc:temp desc
execute if data storage pc:temp desc.lore.item run function pc:sys/item/refresh/data/item with storage pc:temp desc.lore
execute if data storage pc:temp desc.lore.slot run function pc:sys/item/refresh/data/slot with storage pc:temp desc.lore

# Output
execute if function pc:sys/item/refresh/is_exist run function pc:sys/item/refresh/2

kill @n[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.item.refresh]
data remove storage pc:temp desc