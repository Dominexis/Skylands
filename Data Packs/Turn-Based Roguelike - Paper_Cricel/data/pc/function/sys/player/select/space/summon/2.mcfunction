
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] at @s positioned ~-1.5 ~-100 ~-1.5 unless entity @n[type=minecraft:item_display,dx=2,dy=200,dz=2,tag=pc.select] run tag @s add pc.temp
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid,tag=!pc.temp] at @s run function pc:sys/player/select/space/summon/3
execute if entity @n[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.temp] run schedule function pc:sys/player/select/space/summon/2 2t

# Reset
tag @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.temp] remove pc.temp