## This function runs as and at a player when they log out of the plot

tag @s remove did.player.logged

tag @s remove did.marker.main
tag @s remove did.vendor.interact
tag @s remove did.vendor.funnydisplay
tag @s remove did.marker.sus_sand
tag @s remove did.torch.interact
tag @s remove did.torch.display.lit
tag @s remove did.torch.display.unlit
tag @s remove did.torch.display

clear @s
clear @s *[minecraft:custom_data~{did:{no_drop:1}}]
clear @s *[minecraft:custom_data~{did:{sellable:1}}]

effect give @s minecraft:saturation 1 255 true

scoreboard players set @s did.player.lighter_uses 0
scoreboard players set @s did.player.torch_burn_time 0
scoreboard players set @s did.player.torch_burn_loop 0
scoreboard players set @s did.player.torch.placed 0
scoreboard players set @s did.player.item_count 0
scoreboard players set @s did.player.quota 0