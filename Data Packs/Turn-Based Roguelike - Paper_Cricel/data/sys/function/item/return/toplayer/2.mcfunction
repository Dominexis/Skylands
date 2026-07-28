
execute if items entity @a[tag=pc.item.thrower,limit=1] weapon.mainhand * run return run data merge entity @s {Age:-32768s,PickupDelay:0s,Invulnerable:1b}

item replace entity @a[tag=pc.item.thrower,limit=1] weapon.mainhand from entity @s contents
kill @s