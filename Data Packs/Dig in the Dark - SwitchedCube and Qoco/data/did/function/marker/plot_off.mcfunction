## This function runs when the plot turns off

# kill @e[tag=did.marker.sus_sand,dz=-200,dx=200,dy=100]
# kill @e[tag=did.marker.sus_sand.init,dz=-200,dx=200,dy=100]
# kill @e[tag=did.mob.enemy,dz=-200,dx=200,dy=100]

# kill @e[tag=did.torch.display,dz=-200,dx=200,dy=100]
# kill @e[tag=did.torch.interact,dz=-200,dx=200,dy=100]
# kill @e[type=item_frame,dz=-200,dx=200,dy=100]
# kill @e[type=item,dz=-200,dx=200,dy=100]

execute as @a[team=sl.player,dz=-200,dx=200,dy=100] run function did:logout

execute positioned ~98 ~7 ~-96 as @n[type=interaction,tag=did.vendor.interact,distance=..1] run kill @s

execute positioned ~98 ~7 ~-96 as @n[type=item_display, tag=did.vendor.funnydisplay,distance=..1] run kill @s
kill @e[type=!player,dz=-200,dx=200,dy=100]

execute run kill @n[type=marker,tag=did.marker.main,distance=..1]

