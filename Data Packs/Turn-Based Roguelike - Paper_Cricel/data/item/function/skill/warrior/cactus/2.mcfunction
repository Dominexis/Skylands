
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] at @s run function item:skill/warrior/cactus/3

# fx
function item:skill/warrior/cactus/fx/use
execute anchored eyes run particle minecraft:trial_omen ^ ^ ^ 0 0 0 0 0 force
playsound minecraft:entity.bee.sting master @a ~ ~1024 ~ 0 2 0.25