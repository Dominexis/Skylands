# As : arena
# At : prison_button
##

setblock ~ ~ ~ minecraft:air destroy

tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] ~ ~1 ~

# Effects
execute at @r[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] run particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.3 50
execute at @r[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] run playsound minecraft:ui.toast.challenge_complete player @a[distance=..30] ~ ~ ~ 1 1.5
tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local] [{"text":"[Arena] ","color":"gray"},{"text":"All players are revived !","color":"white"}]

# Clear crystals
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.type.dropped_money,tag=synb.ctx.local]
clear @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] minecraft:prismarine_crystals

# Respawn
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] at @s run function synb:itemengine/player/respawn