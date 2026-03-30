##

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.type.collectible,tag=!synb.attr.independant,tag=synb.ctx.local] at @s run function synb:elements/collectible/_animation
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.type.collectible,tag=!synb.attr.independant,tag=synb.ctx.local] at @s positioned ~ ~-1 ~ if entity @a[team=sl.player,tag=synb.type.player,distance=..1] run function synb:elements/collectible/_collect