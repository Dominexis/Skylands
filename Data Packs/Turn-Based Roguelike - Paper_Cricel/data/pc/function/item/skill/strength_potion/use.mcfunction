
# effect
data modify storage pc:temp repair set value {item:"strength_potion",value:-1,is_max:1b}
function pc:sys/item/durability/use

execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now,limit=1] at @s run function pc:item/skill/strength_potion/2