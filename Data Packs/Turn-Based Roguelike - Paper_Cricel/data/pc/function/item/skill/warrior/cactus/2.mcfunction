
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/warrior/cactus/3

# fx
function pc:item/skill/warrior/cactus/fx/use
execute anchored eyes run particle minecraft:trial_omen ^ ^ ^ 0 0 0 0 0 force
playsound minecraft:entity.bee.sting master @a ~ ~1024 ~ 0 2 0.25