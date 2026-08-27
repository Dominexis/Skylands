
# Update enemy quantity for swarm damage spell
execute store result score #enemy_quantity sanct.numbers if entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=#sanct:spell/swarm_damage]

# Player slow clocks
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] at @s run function sanct:player/tick_slow

# Set skeletons back to bow after a while
scoreboard players remove @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:skeleton,scores={sanct.respawn_timer=1..}] sanct.respawn_timer 1
item replace entity @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:skeleton,scores={sanct.respawn_timer=1}] weapon.mainhand with minecraft:bow

# Gravestones and totems checking for grass blocking their hitbox
execute as @e[x=-2352,y=48,z=2256,dx=94,dy=62,dz=94,type=minecraft:armor_stand,tag=sanct.require_grass_check,predicate=sanct:on_ground] on passengers at @s[type=minecraft:interaction] run function sanct:plot/grass_check

# Remove skulls before they explode
kill @e[type=minecraft:wither_skull,x=-2314,y=27,z=2303,dx=8,dy=4,dz=8]

schedule function sanct:plot/tick_slow 10