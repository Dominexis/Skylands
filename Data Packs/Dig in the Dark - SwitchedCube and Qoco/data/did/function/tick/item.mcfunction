data modify entity @s PickupDelay set value 0s

execute if items entity @s contents *[minecraft:custom_data~{did:{sellable:1}}] at @s on origin run tp @n[type=minecraft:item,distance=..0.1] @s
execute if items entity @s contents *[minecraft:custom_data~{did:{no_drop:1}}] run kill @s