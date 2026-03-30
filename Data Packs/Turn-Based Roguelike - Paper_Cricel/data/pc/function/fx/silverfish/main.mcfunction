
# effect
scoreboard players add @s sl.timer 1
execute if score @s sl.timer matches 5.. run scoreboard players reset @s sl.timer
execute if score @s sl.timer matches 1..5 run return fail

scoreboard players operation #this pc.main = @s pc.object_id
execute as @e[type=silverfish,tag=pc.fx.silverfish.buddies,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if score @s pc.object_id = #this pc.main run tag @s add pc.temp

tp @n[type=silverfish,tag=pc.fx.silverfish.1,tag=pc.temp,distance=..100] ^0.45 ^ ^-0.45 ~ 0
tp @n[type=silverfish,tag=pc.fx.silverfish.2,tag=pc.temp,distance=..100] ^-0.45 ^ ^-0.45 ~ 0
tp @n[type=silverfish,tag=pc.fx.silverfish.3,tag=pc.temp,distance=..100] ^0.45 ^ ^0.45 ~ 0
tp @n[type=silverfish,tag=pc.fx.silverfish.4,tag=pc.temp,distance=..100] ^-0.45 ^ ^0.45 ~ 0
tp @n[type=silverfish,tag=pc.fx.silverfish.5,tag=pc.temp,distance=..100] ^0.9 ^ ^0.9 ~ 0
tp @n[type=silverfish,tag=pc.fx.silverfish.6,tag=pc.temp,distance=..100] ^-0.9 ^ ^-0.9 ~ 0
tp @n[type=silverfish,tag=pc.fx.silverfish.7,tag=pc.temp,distance=..100] ^-0.9 ^ ^0.9 ~ 0
tp @n[type=silverfish,tag=pc.fx.silverfish.8,tag=pc.temp,distance=..100] ^0.9 ^ ^-0.9 ~ 0

tag @e[type=silverfish,tag=pc.temp,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.temp

# fx