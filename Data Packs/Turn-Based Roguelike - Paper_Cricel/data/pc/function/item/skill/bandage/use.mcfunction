
# effect
data modify storage pc:temp repair set value {item:bandage,value:-1,is_max:true}
function pc:sys/item/durability/use

execute as @e[type=marker,tag=pc.grid.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/bandage/2