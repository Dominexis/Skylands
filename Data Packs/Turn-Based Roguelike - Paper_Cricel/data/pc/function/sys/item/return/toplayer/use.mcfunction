
execute on origin run tag @s add pc.item.thrower

function pc:sys/item/return/toplayer/2

tag @a[tag=pc.item.thrower,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] remove pc.item.thrower