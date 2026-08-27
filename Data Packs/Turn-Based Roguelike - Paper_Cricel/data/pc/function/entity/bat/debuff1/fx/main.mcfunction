
scoreboard players add @s pc.duration 1

execute facing entity @e[tag=pc.entity.bat.debuff1.pos2,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run function pc:entity/bat/debuff1/fx/2

tp @s ^ ^ ^0.75
execute as @e[tag=pc.entity.bat.debuff1.pos2,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run tp @s ^ ^ ^0.75
execute as @e[tag=pc.entity.bat.debuff1.pos3,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run tp @s ^ ^ ^0.75
execute as @e[tag=pc.entity.bat.debuff1.pos4,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run tp @s ^ ^ ^0.75

execute if score @s pc.duration matches 20.. run function pc:entity/bat/debuff1/fx/clear