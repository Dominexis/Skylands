
function pc:sys/grid/select/mob/clear
execute as @e[predicate=!pc:sys/entity/player,predicate=pc:sys/entity/any_real,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/entity/intent/icon/self/summon