
scoreboard players remove #skill.warrior.momentum.repeat pc.main 1

execute as @e[tag=pc.grid.atker,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/warrior/momentum/2
execute as @e[tag=pc.player.selector,predicate=pc:sys/entity/any,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s positioned ~ ~1 ~ facing entity @e[tag=pc.grid.atker,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] eyes rotated ~ 0 run function pc:item/skill/warrior/momentum/fx/use

execute if score #skill.warrior.momentum.repeat pc.main matches 0.. run return run function pc:sys/entity/schedule/use {func:"function pc:item/skill/warrior/momentum/use",delay:3}
function pc:sys/combat/turn/end_act