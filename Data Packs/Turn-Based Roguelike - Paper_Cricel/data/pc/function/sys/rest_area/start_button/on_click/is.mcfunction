
scoreboard players set #pass pc.main 1
execute as @a[predicate=pc:sys/player/ingame,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/rest_area/start_button/on_click/2
return run scoreboard players get #pass pc.main