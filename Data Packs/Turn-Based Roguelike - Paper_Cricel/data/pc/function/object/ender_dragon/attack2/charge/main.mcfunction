
# effect
execute facing entity @n[type=item_display,tag=pc.mob.ender_dragon,distance=..100] feet run tp @s ^ ^ ^0.5 ~ ~
execute if entity @e[type=item_display,tag=pc.mob.ender_dragon,distance=..1] run kill @s

# fx
particle dust{color:[0.1,0.1,0.1],scale:0.75} ~ ~ ~ 0 0 0 0 0 force
particle dust{color:[0.1,0.1,0.1],scale:0.75} ^ ^ ^-0.25 0 0 0 0 0 force