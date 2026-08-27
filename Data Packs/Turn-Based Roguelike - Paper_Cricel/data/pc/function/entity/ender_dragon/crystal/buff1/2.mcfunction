
data modify storage pc:temp effect set value {id:"critical_hit",value:2}
function pc:sys/effect/apply

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~1 ~ facing entity @e[tag=pc.atker,type=end_crystal,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run function pc:entity/ender_dragon/crystal/buff1/beam
function pc:sys/fx/buff/use