
kill @s
tag @e[tag=pc.grid.triggered,type=marker,limit=9,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.grid.triggered
function pc:sys/combat/turn/end_act

# fx
particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~1024 ~ 0 1 0.2