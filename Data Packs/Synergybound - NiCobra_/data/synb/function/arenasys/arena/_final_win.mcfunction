# As/At : arena
##

stopsound @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local] record

# Revive players
tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] ~ ~1 ~
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] at @s run function synb:itemengine/player/respawn

# Potions
effect clear @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] minecraft:wither
effect give @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] minecraft:resistance 10 255 true

# Effects (common)
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.5 0.6
title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] times 0 120 30

# Effects (Arena 2)
execute if score @s synb.ASys.ArenaID matches 2 run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[Synb] ","color":"gray"},{"text":"A team got a standard completion ! (Arena 2)","color":"white"}]
execute if score @s synb.ASys.ArenaID matches 2 run title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] title {"text":"Standard Completion","bold":true,"color":"#b3f0ff"}
execute if score @s synb.ASys.ArenaID matches 2 run title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] subtitle "Arena 2 conquered !"

# Effects (Arena 3)
execute if score @s synb.ASys.ArenaID matches 3 run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] [{"text":"[Synb] ","color":"gray"},{"text":"A team got an ULTIMATE completion ! (Arena 3)","color":"white"}]
execute if score @s synb.ASys.ArenaID matches 3 run title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] title {"text":"ULTIMATE COMPLETION","bold":true,"color":"#b3f0ff"}
execute if score @s synb.ASys.ArenaID matches 3 run title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] subtitle "Arena 3 conquered !"