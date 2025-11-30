
# effect
scoreboard players add #range pc.main 1

execute as @e[type=minecraft:end_crystal,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.atker,limit=1] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run return fail
execute if score #range pc.main matches 50.. run return fail

# fx
particle minecraft:heart ~ ~ ~ 0 0 0 0 0 force
particle minecraft:dust{color:[0.961,0.345,0.388],scale:2.0f} ~ ~ ~ 0 0 0 0 1 force

execute positioned ^ ^ ^1 run function pc:object/end_crystal/buff2/beam