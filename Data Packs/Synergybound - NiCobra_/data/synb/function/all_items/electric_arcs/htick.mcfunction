execute if score @s synb.IEExecCount.electric_arcs matches 2.. run return 0

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.electric_arcs.source,tag=synb.ctx.local] at @s run function synb:all_items/electric_arcs/_spread

scoreboard players remove @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,scores={synb.Item.electric_arcs.zap_cooldown=1..}] synb.Item.electric_arcs.zap_cooldown 1
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.electric_arcs.target,sort=random] at @s run function synb:all_items/electric_arcs/_zap
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.electric_arcs.next_target] add synb.item.electric_arcs.target
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.item.electric_arcs.next_target] remove synb.item.electric_arcs.next_target

kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.item.electric_arcs.dummy]