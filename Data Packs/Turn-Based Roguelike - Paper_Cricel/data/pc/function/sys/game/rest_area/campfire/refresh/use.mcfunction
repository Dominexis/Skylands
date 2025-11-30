
# effect
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:player/ingame,predicate=sl:player] at @n[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.rest_area.campfire] run function pc:sys/game/rest_area/campfire/refresh/2