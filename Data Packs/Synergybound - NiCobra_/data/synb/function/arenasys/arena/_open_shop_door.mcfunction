# As/At : arena
##

# [SKYLANDS: RELCOORDS]
execute if score @s synb.ASys.ArenaID matches 0 run fill ~21 ~ ~-2 ~21 ~3 ~2 minecraft:air destroy
execute if score @s synb.ASys.ArenaID matches 1 run fill ~17 ~ ~-1 ~17 ~2 ~1 minecraft:air destroy
execute if score @s synb.ASys.ArenaID matches 2 run fill ~19 ~1 ~-1 ~19 ~3 ~1 minecraft:air destroy
execute if score @s synb.ASys.ArenaID matches 3 run fill ~-17 ~1 ~-1 ~-17 ~3 ~1 minecraft:air destroy

execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.mark.prison_button,tag=synb.ctx.local] run setblock ~ ~ ~ minecraft:stone_button[face=floor]