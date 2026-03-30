execute as @e[type=minecraft:arrow,tag=!synb.item.moonstone.no_gravity,distance=..5] at @s on origin if entity @s[tag=synb.ctx.generic_player_src] run tag @e[type=arrow,distance=0] add synb.item.moonstone.no_gravity_new

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:arrow,tag=synb.item.moonstone.no_gravity_new] run data merge entity @s {NoGravity:1b}
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:arrow,tag=synb.item.moonstone.no_gravity_new] add synb.item.moonstone.no_gravity
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:arrow,tag=synb.item.moonstone.no_gravity_new] remove synb.item.moonstone.no_gravity_new