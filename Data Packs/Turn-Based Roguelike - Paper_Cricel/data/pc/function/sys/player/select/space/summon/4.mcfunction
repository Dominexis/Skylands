
# effect
execute positioned ~-1.5 ~-100 ~-1.5 as @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.temp] at @s positioned ~-1.5 ~-100 ~-1.5 unless entity @n[type=minecraft:item_display,dx=2,dy=200,dz=2,tag=pc.select] at @s run function pc:sys/player/select/space/per