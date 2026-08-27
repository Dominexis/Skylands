
execute if items entity @a[tag=pc.item.thrower,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] weapon.mainhand * run return run data merge entity @s {Age:-32768s,PickupDelay:0s,Invulnerable:1b}

item replace entity @a[tag=pc.item.thrower,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] weapon.mainhand from entity @s contents
kill @s