# As/At : player
##

scoreboard players operation #id synb.Tmp.Expr = @e[type=minecraft:marker,tag=synb.mark.arena,distance=..45,sort=nearest,limit=1] synb.ASys.ArenaID

# [SKYLANDS: ABSCOORDS]
execute if score #id synb.Tmp.Expr matches 1 run setblock 3332 57 -2362 minecraft:air destroy
execute if score #id synb.Tmp.Expr matches 1 run setblock 3335 57 -2361 minecraft:air destroy
execute if score #id synb.Tmp.Expr matches 1 run setblock 3334 57 -2358 minecraft:air destroy

execute if score #id synb.Tmp.Expr matches 2 run fill 3326 80 -2297 3315 81 -2290 minecraft:water replace minecraft:lava

execute if score #id synb.Tmp.Expr matches 3 run fill 3335 113 -2295 3341 117 -2290 minecraft:obsidian replace minecraft:lava