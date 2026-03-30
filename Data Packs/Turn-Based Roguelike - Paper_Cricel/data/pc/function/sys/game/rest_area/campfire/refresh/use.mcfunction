
# effect
execute as @a[predicate=pc:player/ingame,predicate=sl:player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @n[type=text_display,tag=pc.rest_area.campfire,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/game/rest_area/campfire/refresh/2