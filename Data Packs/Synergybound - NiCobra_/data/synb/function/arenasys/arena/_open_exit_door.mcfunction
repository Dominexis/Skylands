# As/At : arena
##

# [SKYLANDS: RELCOORDS]
execute if score @s synb.ASys.ArenaID matches 0 run fill ~-2 ~ ~-21 ~2 ~3 ~-21 minecraft:air destroy
execute if score @s synb.ASys.ArenaID matches 1 run fill ~-1 ~ ~17 ~1 ~2 ~17 minecraft:air destroy
execute if score @s synb.ASys.ArenaID matches 2 run fill ~-1 ~ ~17 ~1 ~2 ~17 minecraft:air destroy
execute if score @s synb.ASys.ArenaID matches 3 run fill ~17 ~1 ~1 ~17 ~3 ~-1 minecraft:air destroy

tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local] [{"text":"[Arena] ","color":"gray"},{"text":"Exit opened !","color":"white"}]