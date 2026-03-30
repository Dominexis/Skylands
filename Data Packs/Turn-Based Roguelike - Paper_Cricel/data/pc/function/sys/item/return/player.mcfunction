
# Replace
execute unless items entity @a[predicate=sl:player,tag=pc.temp,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] weapon.mainhand * run return run function pc:sys/item/return/replace

# Give
data modify entity @s Age set value -32768s
data modify entity @s PickupDelay set value 0s
data modify entity @s Invulnerable set value 1b