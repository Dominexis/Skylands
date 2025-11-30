
# effect
tag @s add pc.item.refresh
data modify entity @s item set from storage pc:temp desc.real_item

execute summon minecraft:text_display run function pc:sys/item/refresh/interpret/lore
$data modify entity @s item.components."minecraft:lore"[$(index)] set from storage pc:temp desc.lore.text