## This function runs when the plot turns off

# kill @e[tag=did.marker.sus_sand,dz=-200,dx=200,dy=100]
# kill @e[tag=did.marker.sus_sand.init,dz=-200,dx=200,dy=100]
# kill @e[tag=did.mob.enemy,dz=-200,dx=200,dy=100]

# kill @e[tag=did.torch.display,dz=-200,dx=200,dy=100]
# kill @e[tag=did.torch.interact,dz=-200,dx=200,dy=100]
# kill @e[type=item_frame,dz=-200,dx=200,dy=100]
# kill @e[type=item,dz=-200,dx=200,dy=100]

execute as @a[dx=200,dy=100,dz=-200,team=sl.player] run function did:logout

execute positioned ~98 ~7 ~-96 as @n[type=minecraft:interaction,distance=..1,tag=did.vendor.interact] run kill @s

execute positioned ~98 ~7 ~-96 as @n[type=minecraft:item_display,distance=..1,tag=did.vendor.funnydisplay] run kill @s
kill @e[type=!minecraft:player,dx=200,dy=100,dz=-200]

kill @n[type=minecraft:marker,distance=..1,tag=did.marker.main]

