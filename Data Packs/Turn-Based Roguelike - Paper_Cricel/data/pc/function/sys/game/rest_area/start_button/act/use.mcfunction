
# effect
scoreboard players set #pass pc.main 1
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] at @s run function pc:sys/game/rest_area/start_button/act/player/use
execute if score #pass pc.main matches 1 run function pc:sys/game/combat/start/use