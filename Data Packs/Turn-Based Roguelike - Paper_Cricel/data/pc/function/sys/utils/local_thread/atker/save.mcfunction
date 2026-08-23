## (exe) victim
## (macro) id

function pc:sys/utils/local_thread/damage/save

$tag @e[scores={pc.entity.victim=1},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.local_thread.$(id).victim
function pc:sys/grid/range/clear

$tag @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.local_thread.$(id).atker
tag @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.atker

tag @s add pc.atker