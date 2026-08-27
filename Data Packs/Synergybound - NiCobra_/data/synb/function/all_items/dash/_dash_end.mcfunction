tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.damaged] remove synb.arg.damaged

tp @s ~ ~-1 ~
execute at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~0.5 ~
execute at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~0.5 ~

playsound minecraft:entity.ender_dragon.flap player @a ~ ~ ~ 0.7 1.4