
# effect
function pc:sys/grid/select/ally

scoreboard players set #value pc.main 1
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:passive/effect/apply {effect:"entangled"}

function pc:sys/grid/select/clear

# fx
particle minecraft:nautilus ~ ~1 ~ 0.75 0.25 0.75 0 40 force