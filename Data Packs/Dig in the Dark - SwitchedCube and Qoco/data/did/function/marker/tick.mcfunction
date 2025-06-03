execute positioned ~98 ~7 ~-96 unless entity @a[team=sl.player,distance=..3] run execute as @n[type=item_display, tag=did.vendor.funnydisplay,distance=..1] run data modify entity @s item.components."minecraft:item_model" set value "did:vendor"
execute positioned ~98 ~7 ~-96 if entity @a[team=sl.player,distance=..3] run execute as @n[type=item_display,tag=did.vendor.funnydisplay,distance=..1] run data modify entity @s item.components."minecraft:item_model" set value "did:vendor_evil"

execute as @e[type=marker, tag=did.marker.sus_sand,dz=-200,dx=200,dy=100] at @s run function did:tick/sus_sand
execute as @e[type=item,dz=-200,dx=200,dy=100] run function did:tick/item
execute as @a[team=sl.player,dz=-200,dx=200,dy=100] run function did:tick/player
execute as @e[type=interaction,dz=-200,dx=200,dy=100] run function did:tick/interaction

execute as @e[type=interaction,tag=did.torch.interact,dz=-200,dx=200,dy=100] at @s as @a[team=sl.player,tag=did.player.logged,distance=..100] if score @s did.player.id = @n[type=interaction, tag=did.torch.interact,distance=..1] did.player.id if score @s did.player.torch_burn_time matches 0 run function did:misc/un_light


execute as @e[type=item_frame,dz=-200,dx=200,dy=100] run kill @s
execute positioned ~98 ~7 ~-100 positioned ~1.5 ~-.5 ~ run effect clear @a[team=sl.player,distance=..18] blindness