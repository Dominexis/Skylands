
# effect
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.lobby.maps] at @s run function pc:sys/lobby/gameplay/maps/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.lobby.settings] at @s run function pc:sys/lobby/gameplay/settings/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=item_display,tag=pc.lobby.start,limit=1] at @s run function pc:sys/lobby/start/main
execute as @e[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=armor_stand,tag=pc.lobby.author,limit=1] at @s run function pc:sys/lobby/author/main