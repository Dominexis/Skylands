# As/At : harmode_stand (mark)
##

# Note : Global ticking

scoreboard players set #independant_mode synb.Tmp.Arg 1
execute if score tinf synb.TickCycle matches 10 run function synb:elements/collectible/spawn {item_col_id:"_hard_mode",pool_name:"shop"}
scoreboard players set #independant_mode synb.Tmp.Arg 0

# Creating a mini 'local' space
tag @e[type=minecraft:item_display,distance=..5] add synb.ctx.local
tag @a[team=sl.player,distance=..5] add synb.ctx.local

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.type.collectible,tag=synb.ctx.local] at @s run function synb:elements/collectible/_animation
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.type.collectible,tag=synb.ctx.local] at @s positioned ~ ~-1 ~ if entity @a[team=sl.player,tag=synb.type.player,distance=..1] run function synb:elements/hardmode_stand/_collect

# Unset local
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:item_display,tag=synb.ctx.local] remove synb.ctx.local
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local] remove synb.ctx.local