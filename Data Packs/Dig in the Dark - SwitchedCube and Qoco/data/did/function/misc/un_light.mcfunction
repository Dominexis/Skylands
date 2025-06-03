execute at @n[distance=..0.1,tag=did.torch.display.lit,type=item_display] run setblock ~ ~ ~ air
tag @n[distance=..0.1,tag=did.torch.display.lit,type=item_display] add did.torch.display.unlit
execute as @n[distance=..0.1,tag=did.torch.display.lit,type=item_display] run data modify entity @s item.components."minecraft:item_model" set value "did:torch_unlit"
tag @n[distance=..0.1,tag=did.torch.display.lit,type=item_display] remove did.torch.display.lit