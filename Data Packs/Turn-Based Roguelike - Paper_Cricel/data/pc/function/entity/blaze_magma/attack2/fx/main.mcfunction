
execute at @s anchored eyes facing entity @e[tag=pc.intent.now,tag=pc.intent.target,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] eyes positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^25 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.75 ~ ~

execute if function pc:entity/blaze_magma/attack2/fx/is_target run function pc:entity/blaze_magma/attack2/fx/clear

# fx
particle dust{color:[0.875, 0.306, 0.192],scale:1} ~ ~ ~ 0.2 0.2 0.2 0 10 force
particle entity_effect{color:[0.612, 0.102, 0.078, 1]} ~ ~ ~ 0.4 0.4 0.4 0 2 force