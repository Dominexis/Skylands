
# effect
function pc:sys/grid/select/ally
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:object/fragile_slime/debuff1/victim
function pc:sys/grid/select/clear