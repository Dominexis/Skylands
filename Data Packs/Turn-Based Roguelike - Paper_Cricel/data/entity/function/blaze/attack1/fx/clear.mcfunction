
kill @s
tag @e[tag=pc.grid.triggered,type=marker,limit=9] remove pc.grid.triggered
function sys:combat/turn/end_act

# fx
particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~1024 ~ 0 1 0.2