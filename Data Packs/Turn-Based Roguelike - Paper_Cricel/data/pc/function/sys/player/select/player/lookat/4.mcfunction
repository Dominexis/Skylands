
# effect
execute as @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.select.selected] at @s run function pc:sys/player/select/player/lookat/reset

tag @s add pc.select.selected
execute as @n[type=!minecraft:player,distance=..100,tag=pc.player.now,predicate=pc:object/ally_player] at @s facing entity @n[type=minecraft:item_display,distance=1.5..100,tag=pc.select.selected] eyes run rotate @s ~ 0

# fx
execute as @n[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/grid/effect/info/summon
execute as @n[type=minecraft:marker,distance=..100,tag=pc.grid] at @s run function pc:sys/grid/state/color
data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[2.2f,1.0f,2.2f],translation:[0.0f,-1.0f,0.0f]},start_interpolation:0,interpolation_duration:2}