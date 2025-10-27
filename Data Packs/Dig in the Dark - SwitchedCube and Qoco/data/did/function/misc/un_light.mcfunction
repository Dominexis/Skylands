execute at @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.lit] run setblock ~ ~ ~ minecraft:air
tag @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.lit] add did.torch.display.unlit
execute as @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.lit] run data modify entity @s item.components."minecraft:item_model" set value "did:torch_unlit"
tag @n[type=minecraft:item_display,distance=..0.1,tag=did.torch.display.lit] remove did.torch.display.lit