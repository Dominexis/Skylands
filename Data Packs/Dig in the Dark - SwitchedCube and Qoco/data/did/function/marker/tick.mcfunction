execute positioned ~98 ~7 ~-96 unless entity @a[distance=..3,team=sl.player] as @n[type=minecraft:item_display,distance=..1,tag=did.vendor.funnydisplay] run data modify entity @s item.components."minecraft:item_model" set value "did:vendor"
execute positioned ~98 ~7 ~-96 if entity @a[distance=..3,team=sl.player] as @n[type=minecraft:item_display,distance=..1,tag=did.vendor.funnydisplay] run data modify entity @s item.components."minecraft:item_model" set value "did:vendor_evil"

execute as @e[type=minecraft:marker,dx=200,dy=100,dz=-200,tag=did.marker.sus_sand] at @s run function did:tick/sus_sand
execute as @e[type=minecraft:item,dx=200,dy=100,dz=-200] run function did:tick/item
execute as @a[dx=200,dy=100,dz=-200,team=sl.player] run function did:tick/player
execute as @e[type=minecraft:interaction,dx=200,dy=100,dz=-200] run function did:tick/interaction

execute as @e[type=minecraft:interaction,dx=200,dy=100,dz=-200,tag=did.torch.interact] at @s as @a[distance=..100,tag=did.player.logged,team=sl.player] if score @s did.player.id = @n[type=minecraft:interaction,distance=..1,tag=did.torch.interact] did.player.id if score @s did.player.torch_burn_time matches 0 run function did:misc/un_light


execute as @e[type=minecraft:item_frame,dx=200,dy=100,dz=-200] run kill @s
execute positioned ~98 ~7 ~-100 positioned ~1.5 ~-.5 ~ run effect clear @a[distance=..18,team=sl.player] minecraft:blindness