
# effect
function pc:sys/grid/select/mob3x3

scoreboard players set #damage pc.main 40
function pc:sys/object/damage/atker

scoreboard players set #value pc.main 2
execute as @e[predicate=pc:object/victim,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:weakness}

function pc:sys/grid/select/clear

# fx
particle sweep_attack ~ ~1 ~ 0 0 0 0 0 force