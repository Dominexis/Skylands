
execute as @e[predicate=pc:object/all,type=!player,tag=!pc.player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/intent/use

function pc:sys/grid/select/clear
execute as @e[type=marker,tag=pc.grid,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/state/reset_occupy