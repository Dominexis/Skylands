# As/At : arena
##

# [SKYLANDS: RELCOORDS]
execute if score @s synb.ASys.ArenaID matches 0 run fill ~21 ~ ~-2 ~21 ~3 ~2 minecraft:spruce_fence
execute if score @s synb.ASys.ArenaID matches 1 run fill ~17 ~ ~-1 ~17 ~2 ~1 minecraft:oak_fence
execute if score @s synb.ASys.ArenaID matches 2 run fill ~19 ~1 ~-1 ~19 ~3 ~1 minecraft:iron_bars
execute if score @s synb.ASys.ArenaID matches 3 run fill ~-17 ~1 ~-1 ~-17 ~3 ~1 minecraft:tinted_glass

function synb:arenasys/arena/_close_exit_door