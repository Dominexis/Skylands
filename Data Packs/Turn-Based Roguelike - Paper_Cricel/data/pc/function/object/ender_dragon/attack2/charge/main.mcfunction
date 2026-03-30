
# effect
execute facing entity @n[type=minecraft:item_display,distance=..100,tag=pc.mob.ender_dragon] feet run tp @s ^ ^ ^0.5 ~ ~
execute if entity @e[type=minecraft:item_display,distance=..1,tag=pc.mob.ender_dragon] run kill @s

# fx
particle minecraft:dust{color:[0.1,0.1,0.1],scale:0.75f} ~ ~ ~ 0 0 0 0 0 force
particle minecraft:dust{color:[0.1,0.1,0.1],scale:0.75f} ^ ^ ^-0.25 0 0 0 0 0 force