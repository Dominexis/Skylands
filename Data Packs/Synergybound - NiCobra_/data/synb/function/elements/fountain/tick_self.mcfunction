# As/At : fountain
##

execute as @a[team=sl.player,tag=synb.type.player,distance=..3] at @s if block ~ ~ ~ minecraft:water run tag @s add synb.tmp.in_water

execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.in_water] at @s at @e[type=minecraft:item,tag=synb.type.dropped_money,distance=..1] run function synb:elements/fountain/_toss

execute if score t5 synb.TickCycle matches 1 as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] at @s run function synb:elements/fountain/_heal

tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] remove synb.tmp.in_water

particle minecraft:bubble ~ ~0.5 ~ 0.8 0.2 0.8 0.2 3