
# effect
scoreboard players add #range pc.main 1

execute as @e[type=minecraft:end_crystal,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.atker,limit=1] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run return fail
execute if score #range pc.main matches 100.. run return fail

# fx
particle minecraft:infested ~ ~ ~ 0 0 0 0 0 force
particle minecraft:dust{color:[0.553,0.396,0.659],scale:2.0f} ~ ~-0.5 ~ 0 0 0 1 0 force

execute positioned ^ ^ ^0.25 run function pc:object/end_crystal/debuff1/beam