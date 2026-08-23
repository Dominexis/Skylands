
scoreboard players remove #skill.fading_compass.repeat pc.main 1

execute at @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:item/skill/warrior/fading_compass/3

execute if score #skill.fading_compass.repeat pc.main matches 1.. run return run function pc:sys/entity/schedule/use {func:"function pc:item/skill/warrior/fading_compass/2",delay:5}
function pc:sys/entity/schedule/use {func:"function pc:sys/combat/turn/end_act",delay:5}