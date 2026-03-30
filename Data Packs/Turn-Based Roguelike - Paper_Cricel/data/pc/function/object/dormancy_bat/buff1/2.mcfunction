
# effect
function pc:sys/grid/select/mob
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/dormancy_bat/buff1/mob
function pc:sys/grid/select/clear

function pc:sys/grid/select/ally
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/dormancy_bat/buff1/ally
function pc:sys/grid/select/clear