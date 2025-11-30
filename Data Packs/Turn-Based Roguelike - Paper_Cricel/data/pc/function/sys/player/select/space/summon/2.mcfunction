
# effect
execute as @e[type=marker,tag=pc.grid,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s positioned ~-1.5 ~-100 ~-1.5 unless entity @n[type=item_display,tag=pc.select,dx=2,dy=200,dz=2] run tag @s add pc.temp
execute as @e[type=marker,tag=pc.grid,tag=!pc.temp,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/player/select/space/summon/3
execute if entity @n[type=marker,tag=pc.temp,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run schedule function pc:sys/player/select/space/summon/2 2t

    # Reset
tag @e[type=marker,tag=pc.temp,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.temp