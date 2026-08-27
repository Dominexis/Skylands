## (exe) victim

tag @s remove pc.atker
function pc:sys/grid/range/clear

$scoreboard players set @e[tag=pc.local_thread.$(id).victim,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] pc.entity.victim 1
$tag @e[tag=pc.local_thread.$(id).victim,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.local_thread.$(id).victim

$tag @e[tag=pc.local_thread.$(id).atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.atker
$tag @e[tag=pc.local_thread.$(id).atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.local_thread.$(id).atker

function pc:sys/utils/local_thread/damage/load