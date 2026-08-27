
execute if entity @s[advancements={sanct:item_pickup_interact={interact=true}}] positioned ~ ~1.62 ~ as @e[type=minecraft:interaction,tag=sanct.item_pickup,distance=..10] if data entity @s interaction at @s run function sanct:inventory/item_pickup/get_item
execute if entity @s[advancements={sanct:item_pickup_interact={attack=true}}] positioned ~ ~1.62 ~ as @e[type=minecraft:interaction,tag=sanct.item_pickup,distance=..10] if data entity @s attack at @s run function sanct:inventory/item_pickup/get_item

advancement revoke @s only sanct:item_pickup_interact