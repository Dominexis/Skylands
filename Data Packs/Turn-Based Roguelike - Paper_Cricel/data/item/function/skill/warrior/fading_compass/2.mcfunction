
scoreboard players remove #skill.fading_compass.repeat pc.main 1

execute at @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] run function item:skill/warrior/fading_compass/3

execute if score #skill.fading_compass.repeat pc.main matches 1.. run return run function sys:entity/schedule/use {func:"function item:skill/warrior/fading_compass/2",delay:5}
function sys:entity/schedule/use {func:"function sys:combat/turn/end_act",delay:5}