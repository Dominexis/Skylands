
data modify storage pc:temp effect set value {id:'weakness',value:1}
function pc:sys/effect/apply

execute store success score #is_repel pc.main facing entity @e[tag=pc.player.selector,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] eyes rotated ~180 0 run function pc:sys/entity/repel/use