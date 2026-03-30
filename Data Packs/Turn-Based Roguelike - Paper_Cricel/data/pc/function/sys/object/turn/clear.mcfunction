
tag @s remove pc.object.now
tag @s remove pc.sys.atker
function pc:sys/grid/select/clear

execute as @e[type=marker,tag=pc.grid,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/state/reset_occupy