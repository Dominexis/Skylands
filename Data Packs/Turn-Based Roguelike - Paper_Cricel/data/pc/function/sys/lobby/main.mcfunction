
execute as @e[tag=pc.lobby.maps,type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/lobby/gameplay/maps/main
execute as @e[tag=pc.lobby.settings,type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/lobby/gameplay/settings/main
execute as @e[tag=pc.lobby.start,type=minecraft:item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/lobby/start/main
execute as @e[tag=pc.lobby.author,type=minecraft:armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/lobby/author/main